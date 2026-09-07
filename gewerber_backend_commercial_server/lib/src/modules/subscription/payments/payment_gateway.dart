import '../../../generated/protocol.dart';

/// Server-internal error thrown by [PaymentGateway] implementations.
///
/// This is a plain Dart exception (not a Serverpod model) on purpose: the
/// gateway is a server-internal seam and never crosses the wire. Endpoint /
/// service code that needs to report failures to clients should catch this
/// and map it onto a module exception model (e.g. `SubscriptionException`).
///
/// Provider-specific errors (such as PayPal's `ApiException`) are wrapped so
/// that callers only ever see [PaymentGatewayException]; the original error
/// is preserved in [cause] and the provider error name in [providerErrorCode].
class PaymentGatewayException implements Exception {
  /// Human-readable description of the failure (safe for logs, never
  /// contains secrets).
  final String message;

  /// The provider's own error code / name when known (e.g. PayPal's
  /// `INVALID_REQUEST` or `UNAUTHENTICATED`), otherwise `null`.
  final String? providerErrorCode;

  /// The HTTP status code returned by the provider when known.
  final int? statusCode;

  /// The underlying provider error that triggered this exception, if any.
  final Object? cause;

  /// Creates a gateway exception describing [message].
  const PaymentGatewayException(
    this.message, {
    this.providerErrorCode,
    this.statusCode,
    this.cause,
  });

  @override
  String toString() =>
      'PaymentGatewayException($statusCode, $providerErrorCode): $message';
}

/// A created checkout session for the PayPal subscription flow.
///
/// The buyer must be redirected to [approvalUrl] to approve the subscription;
/// activation is then driven by PayPal webhooks, not by this response.
class PayPalCheckoutSession {
  /// The PayPal-generated subscription id (I-... prefix). Store it on the
  /// `Subscription` model as `paypalSubscriptionId`.
  final String paypalSubscriptionId;

  /// The PayPal approval (payer-action) URL to redirect the buyer to.
  final String approvalUrl;

  /// Creates a checkout session result.
  const PayPalCheckoutSession({
    required this.paypalSubscriptionId,
    required this.approvalUrl,
  });

  @override
  String toString() =>
      'PayPalCheckoutSession($paypalSubscriptionId, $approvalUrl)';
}

/// Current state of a subscription as reported by the provider.
///
/// Deviation from the original interface sketch: PayPal does not expose a
/// "billing period end" on the subscription resource, so [billingPeriodEnd]
/// was dropped. The next cycle boundary is available via [nextBillingTime].
class PayPalSubscriptionDetails {
  /// Provider status string, normalized to lower case (e.g. `approval_pending`,
  /// `active`, `suspended`, `cancelled`, `expired`).
  final String status;

  /// The PayPal plan id the subscription bills against, when reported.
  final String? planId;

  /// The PayPal payer (subscriber) id, populated once the buyer approved.
  final String? payerId;

  /// Start of the current billing period (subscription start time), when
  /// reported by the provider.
  final DateTime? billingPeriodStart;

  /// When the next payment is due, when reported by the provider.
  final DateTime? nextBillingTime;

  /// Creates subscription details as returned by [PaymentGateway.getSubscription].
  const PayPalSubscriptionDetails({
    required this.status,
    this.planId,
    this.payerId,
    this.billingPeriodStart,
    this.nextBillingTime,
  });

  @override
  String toString() =>
      'PayPalSubscriptionDetails($status, plan: $planId, payer: $payerId, '
      'nextBilling: $nextBillingTime)';
}

/// Result of verifying a webhook transmission with the provider.
class PayPalWebhookVerification {
  /// `true` when the provider confirmed the signature of the transmission.
  final bool verified;

  /// The configured webhook id the transmission was verified against.
  final String? webhookId;

  /// The provider transmission id (from the `PayPal-Transmission-Id` header),
  /// useful for correlating with the stored `PaypalEvent.eventId`.
  final String? transmissionId;

  /// Creates a webhook verification result.
  const PayPalWebhookVerification({
    required this.verified,
    this.webhookId,
    this.transmissionId,
  });

  @override
  String toString() =>
      'PayPalWebhookVerification(verified: $verified, webhook: $webhookId, '
      'transmission: $transmissionId)';
}

/// Provider-agnostic payment gateway seam.
///
/// All recurring-billing operations the subscription module needs are defined
/// here so that the concrete provider (currently PayPal, see `PayPalGateway`)
/// can be swapped or faked in tests without touching services or endpoints.
///
/// Every method may throw [PaymentGatewayException] on provider or
/// configuration errors.
abstract interface class PaymentGateway {
  /// Ensures a catalog product exists with the given [name] and returns its
  /// provider id (PayPal `PROD-...` id). Creates the product if missing.
  ///
  /// [description] is only applied when the product is newly created; an
  /// existing product with the same name is reused as-is.
  Future<String> ensureProduct({
    required String name,
    required String description,
  });

  /// Creates a billing plan for one [cycle] at [priceMinor] (in the currency's
  /// minor units, e.g. cents) and returns the new plan id.
  ///
  /// Deviation from the original interface sketch (which took both a monthly
  /// and an annual price): PayPal plans support exactly **one regular billing
  /// cycle**, so a monthly and an annual price require two separate plans.
  /// This matches the `Plan` model which stores `paypalPlanIdMonthly` and
  /// `paypalPlanIdAnnual` independently.
  ///
  /// One currency per plan. Plans are immutable once used: price changes are
  /// modelled as creating a **new** plan version (never by mutating an
  /// existing plan), so existing subscribers keep their agreed price.
  Future<String> createPlan({
    required String productId,
    required String name,
    required String currency,
    required int priceMinor,
    required SubscriptionBillingCycle cycle,
    String? description,
  });

  /// Creates a plan variant with a single modified [priceMinor] for [cycle]
  /// (used by discount codes) and returns the new plan id.
  ///
  /// [name] must be unique within the provider catalog; variants are ordinary
  /// plans with their own id, so redemptions can be attributed to them.
  Future<String> createPlanVariant({
    required String productId,
    required String name,
    required String currency,
    required int priceMinor,
    required SubscriptionBillingCycle cycle,
    required String description,
  });

  /// Creates a subscription (checkout) against [planId] for [userId] and
  /// returns the provider subscription id plus the approval URL the buyer is
  /// redirected to.
  ///
  /// [promoCodeId] is carried alongside [userId] in the provider's `custom_id`
  /// field so webhook processing can attribute the subscription.
  /// [returnUrl] / [cancelUrl] define where PayPal sends the buyer after
  /// approval / cancellation.
  Future<PayPalCheckoutSession> createCheckout({
    required String planId,
    required String userId,
    String? promoCodeId,
    required String returnUrl,
    required String cancelUrl,
  });

  /// Fetches the current subscription state for [paypalSubscriptionId]
  /// directly from the provider (source of truth for reconciliation).
  Future<PayPalSubscriptionDetails> getSubscription(
    String paypalSubscriptionId,
  );

  /// Immediately cancels the subscription. [reason] is recorded for support
  /// purposes (a default is used when omitted).
  Future<void> cancelSubscription(
    String paypalSubscriptionId, {
    String? reason,
  });

  /// Suspends the subscription (e.g. after repeated payment failures). The
  /// buyer is not charged while suspended; [reason] is recorded for support.
  Future<void> suspendSubscription(
    String paypalSubscriptionId, {
    String? reason,
  });

  /// Reactivates a suspended subscription. [reason] is recorded for support.
  Future<void> activateSubscription(
    String paypalSubscriptionId, {
    String? reason,
  });

  /// Switches the subscription to [newPlanId] (plan / price change).
  ///
  /// Note: PayPal may require buyer consent for certain changes; when it does,
  /// the provider notifies the buyer directly. The gateway does not surface a
  /// consent URL (documented limitation of the `revise` call).
  Future<void> reviseSubscription(
    String paypalSubscriptionId, {
    required String newPlanId,
  });

  /// Verifies a webhook transmission against the provider's
  /// verify-webhook-signature endpoint.
  ///
  /// [headers] are the raw HTTP headers of the notification (matched
  /// case-insensitively: `paypal-transmission-id`, `paypal-transmission-time`,
  /// `paypal-transmission-sig`, `paypal-cert-url`, `paypal-auth-algo`) and
  /// [rawBody] is the **unmodified** request body.
  ///
  /// Returns a [PayPalWebhookVerification] whose [PayPalWebhookVerification.verified]
  /// flag reports the signature check; throws [PaymentGatewayException] when
  /// required headers are missing, no webhook id is configured, or the
  /// verification call itself fails.
  Future<PayPalWebhookVerification> verifyWebhook({
    required Map<String, String> headers,
    required String rawBody,
  });
}
