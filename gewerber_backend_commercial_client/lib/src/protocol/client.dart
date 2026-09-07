/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _ida;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_promo_code_create_request.dart'
    as _ikvi6lko;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_promo_code_detail.dart'
    as _ijwtlkok;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_promo_code_view.dart'
    as _ixdh16c0;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_subscription_stats.dart'
    as _ixkw8134;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_subscription_view.dart'
    as _ivfv04zu;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/checkout_request.dart'
    as _ifdvc6np;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/checkout_view.dart'
    as _ip08qs2d;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/plan_view.dart'
    as _i24e87mh;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/promo_preview.dart'
    as _iegv16z3;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/promo_redemption_view.dart'
    as _itq91ay7;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/subscription_billing_cycle.dart'
    as _iu6iwuzk;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/subscription_view.dart'
    as _i2v29clu;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/waitlist/models/join_waitlist_request.dart'
    as _i5a3xmr1;
import 'package:serverpod_client/serverpod_client.dart' as _isc;

/// {@category Endpoint}
class EndpointCommercial extends _isc.EndpointRef {
  EndpointCommercial(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.commercial';

  _ida.Future<String> status() => caller.callServerEndpoint<String>(
    'gewerber_backend_commercial.commercial',
    'status',
    {},
  );
}

/// Internal administration endpoint for the commercial subscription module,
/// called exclusively by the gewerber-mcp operator tooling (there is no
/// admin UI).
///
/// Every method first resolves the caller's global role from the OSS core's
/// `admin_user` allowlist via [AdminAccess.requireAdmin], mirroring the
/// core's admin mechanism: read methods require `moderator` or above,
/// mutations require `admin`. Non-privileged callers get a
/// [SubscriptionAdminException] with field `role`. Mutations additionally
/// write a [SubscriptionEvent] audit row with the acting admin as actor
/// (same idiom as the core's admin endpoints).
/// {@category Endpoint}
class EndpointAdminSubscription extends _isc.EndpointRef {
  EndpointAdminSubscription(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.adminSubscription';

  /// Lists promo codes, newest first.
  ///
  /// [status] optionally filters by [PromoCodeStatus] name
  /// (case-insensitive); an unknown name throws a
  /// [SubscriptionAdminException] (field `status`, reason `invalidStatus`).
  /// [limit] defaults to [defaultLimit] and is clamped to [maxLimit]. Each
  /// view carries the total redemption count, resolved with a single
  /// grouped `COUNT` query for the whole page (no N+1).
  ///
  /// Requires role `moderator` or `admin`.
  _ida.Future<List<_ixdh16c0.AdminPromoCodeView>> codesList({
    String? status,
    int? limit,
  }) => caller.callServerEndpoint<List<_ixdh16c0.AdminPromoCodeView>>(
    'gewerber_backend_commercial.adminSubscription',
    'codesList',
    {
      'status': status,
      'limit': limit,
    },
  );

  /// Returns the full detail of one promo code, including its
  /// [recentRedemptions] most recent redemptions (newest first).
  ///
  /// Throws a [SubscriptionAdminException] (field `promoCodeId`, reason
  /// `notFound`) for an unknown id. Requires role `moderator` or `admin`.
  _ida.Future<_ijwtlkok.AdminPromoCodeDetail> codeGet(int promoCodeId) =>
      caller.callServerEndpoint<_ijwtlkok.AdminPromoCodeDetail>(
        'gewerber_backend_commercial.adminSubscription',
        'codeGet',
        {'promoCodeId': promoCodeId},
      );

  /// Portfolio-wide counts: subscriptions per status, live subscriptions,
  /// MRR estimate, total redemptions, subscriptions per plan and redemptions
  /// per campaign label. See [AdminSubscriptionStats] for the exact
  /// definitions. Requires role `moderator` or `admin`.
  _ida.Future<_ixkw8134.AdminSubscriptionStats> subscriptionsStats() =>
      caller.callServerEndpoint<_ixkw8134.AdminSubscriptionStats>(
        'gewerber_backend_commercial.adminSubscription',
        'subscriptionsStats',
        {},
      );

  /// Returns **all** subscription rows of the user with the given id (any
  /// scope, any status), newest first (`createdAt` desc, id as tiebreaker).
  ///
  /// [userId] must parse as a UUID; an invalid one throws a
  /// [SubscriptionAdminException] (field `userId`, reason `invalid`). An
  /// unknown user yields an empty list. Each row carries its plan's code and
  /// name, resolved with a single batched lookup. Requires role `moderator`
  /// or `admin`.
  _ida.Future<List<_ivfv04zu.AdminSubscriptionView>> subscriptionGetAdmin(
    String userId,
  ) => caller.callServerEndpoint<List<_ivfv04zu.AdminSubscriptionView>>(
    'gewerber_backend_commercial.adminSubscription',
    'subscriptionGetAdmin',
    {'userId': userId},
  );

  /// Provisions the PayPal catalog for **all** active plan rows and all
  /// active discount promos that still lack a plan variant, via
  /// [PayPalCatalogService.syncAll] (idempotent: rows that already carry
  /// their provider ids are skipped, per-item provider failures are
  /// collected into the report and never abort the run).
  ///
  /// Returns the JSON-serialized [PayPalSyncReport] (server-internal shape,
  /// deliberately not a protocol model):
  /// `{plansSynced, plansSkipped, variantsSynced, variantsSkipped, errors}`.
  /// Writes an `admin.paypal.plans_sync` audit row carrying the report.
  /// Requires role `admin`.
  _ida.Future<String> plansSync() => caller.callServerEndpoint<String>(
    'gewerber_backend_commercial.adminSubscription',
    'plansSync',
    {},
  );

  /// Creates the discounted PayPal plan variant of a single discount promo
  /// (see [PayPalCatalogService.syncDiscountVariant]; the variant covers the
  /// **monthly** price point of the promo's plan). An already-provisioned
  /// promo is returned unchanged.
  ///
  /// Throws [SubscriptionAdminException] (field `promoCodeId`, reason
  /// `notFound`) for an unknown id, and (field `paypal`, reason `invalid`)
  /// when the promo is not provisionable or the provider rejects the
  /// creation — the provider message is surfaced verbatim.
  ///
  /// Returns a JSON object `{code, paypalPlanVariantId}`. Writes an
  /// `admin.paypal.discount_variant_sync` audit row. Requires role `admin`.
  _ida.Future<String> discountVariantSync(int promoCodeId) =>
      caller.callServerEndpoint<String>(
        'gewerber_backend_commercial.adminSubscription',
        'discountVariantSync',
        {'promoCodeId': promoCodeId},
      );

  /// Read-only provisioning status of the PayPal catalog: a JSON object
  /// `{plans: [...], promos: [...]}` with one entry per plan row
  /// (`code`, `currency`, `priceMonthlyMinor`, `priceAnnualMinor`,
  /// `paypalProductId`, `paypalPlanIdMonthly`, `paypalPlanIdAnnual`,
  /// `monthlySynced`, `annualSynced`, ordered by `sortOrder`) and one per
  /// **active discount** promo (`code`, `paypalPlanVariantId`,
  /// `variantSynced`).
  ///
  /// Pure DB read — works without a configured gateway. Requires role
  /// `moderator` or `admin`.
  _ida.Future<String> plansStatus() => caller.callServerEndpoint<String>(
    'gewerber_backend_commercial.adminSubscription',
    'plansStatus',
    {},
  );

  /// Creates a promo code.
  ///
  /// The submitted code is normalized through [PromoService.normalizeCode]
  /// (a malformed one throws the `PromoException` `badFormat`), an unknown
  /// [AdminPromoCodeCreateRequest.planCode] throws (field `planCode`, reason
  /// `unknownPlan`) and an already-taken code throws (field `code`, reason
  /// `duplicate`). Kind sanity: `trial` requires `trialDays > 0`; `discount`
  /// requires `discountType` plus the matching value (`discountPercent`
  /// 1–100 or `discountMinor >= 1`); `maxRedemptions` and `perUserLimit`
  /// must be >= 1 when set; `validUntil` must be after `validFrom`.
  ///
  /// `discount` codes are stored with `paypalPlanVariantId` null: attaching
  /// the discounted PayPal plan variant is part of the Phase 2B plan-sync
  /// tooling, not of this endpoint. New codes start `active`. Writes an
  /// `admin.promo_code.create` audit row. Requires role `admin`.
  _ida.Future<_ixdh16c0.AdminPromoCodeView> codesCreate(
    _ikvi6lko.AdminPromoCodeCreateRequest request,
  ) => caller.callServerEndpoint<_ixdh16c0.AdminPromoCodeView>(
    'gewerber_backend_commercial.adminSubscription',
    'codesCreate',
    {'request': request},
  );

  /// Sets the lifecycle status of a promo code by name (case-insensitive:
  /// `active`, `disabled`, `archived`). An unknown name throws a
  /// [SubscriptionAdminException] (field `status`, reason `invalidStatus`),
  /// an unknown id one with reason `notFound`. Writes an
  /// `admin.promo_code.status_set` audit row. Requires role `admin`.
  _ida.Future<_ixdh16c0.AdminPromoCodeView> codesSetStatus(
    int promoCodeId,
    String status,
  ) => caller.callServerEndpoint<_ixdh16c0.AdminPromoCodeView>(
    'gewerber_backend_commercial.adminSubscription',
    'codesSetStatus',
    {
      'promoCodeId': promoCodeId,
      'status': status,
    },
  );
}

/// Public pricing endpoint exposing the active commercial plan catalog.
///
/// The endpoint is unauthenticated by design (pricing pages are public). It
/// returns [PlanView]s only, which deliberately omit the PayPal product and
/// plan ids as well as the internal `isActive` / `sortOrder` columns.
/// {@category Endpoint}
class EndpointPlan extends _isc.EndpointRef {
  EndpointPlan(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.plan';

  /// Returns all active plans ordered by ascending `sortOrder`.
  _ida.Future<List<_i24e87mh.PlanView>> list() =>
      caller.callServerEndpoint<List<_i24e87mh.PlanView>>(
        'gewerber_backend_commercial.plan',
        'list',
        {},
      );
}

/// Authenticated endpoint exposing the caller's own subscription state,
/// checkout and self-service lifecycle (cancel / billing-cycle switch).
///
/// Only personal-scope subscriptions (`businessId` null) are surfaced here;
/// business-scoped entitlements are resolved server-side by the entitlement
/// source and are not part of this API surface yet.
/// {@category Endpoint}
class EndpointSubscription extends _isc.EndpointRef {
  EndpointSubscription(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.subscription';

  /// Returns the caller's current subscription as a [SubscriptionView], or
  /// null when the user has no subscription that still grants entitlements.
  ///
  /// Throws a [SubscriptionException] (field `auth`, reason
  /// `notAuthenticated`) when the caller is not authenticated.
  _ida.Future<_i2v29clu.SubscriptionView?> getMy() =>
      caller.callServerEndpoint<_i2v29clu.SubscriptionView?>(
        'gewerber_backend_commercial.subscription',
        'getMy',
        {},
      );

  /// Validates [code] for the caller without redeeming it and returns a
  /// [PromoPreview] describing what it would grant.
  ///
  /// The UTM parameters are accepted for symmetry with [redeemPromo]; they
  /// are not persisted by a preview. Throws a [PromoException] (reason
  /// `notAuthenticated`, `badFormat`, `notFound`, `invalid`, `expired`,
  /// `exhausted` or `alreadyRedeemed`) when the code cannot be redeemed.
  _ida.Future<_iegv16z3.PromoPreview> validatePromo(
    String code, {
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
  }) => caller.callServerEndpoint<_iegv16z3.PromoPreview>(
    'gewerber_backend_commercial.subscription',
    'validatePromo',
    {
      'code': code,
      'utmSource': utmSource,
      'utmMedium': utmMedium,
      'utmCampaign': utmCampaign,
    },
  );

  /// Redeems [code] for the caller and returns a [PromoRedemptionView].
  ///
  /// Trial codes create a `trialing` subscription immediately; attribution
  /// and discount codes only record the redemption (discount effects land in
  /// Phase 2B). Throws a [PromoException] with reason `notAuthenticated` when
  /// the caller is not signed in, or the validation reasons from
  /// [validatePromo] when the code cannot be redeemed.
  _ida.Future<_itq91ay7.PromoRedemptionView> redeemPromo(
    String code, {
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
  }) => caller.callServerEndpoint<_itq91ay7.PromoRedemptionView>(
    'gewerber_backend_commercial.subscription',
    'redeemPromo',
    {
      'code': code,
      'utmSource': utmSource,
      'utmMedium': utmMedium,
      'utmCampaign': utmCampaign,
    },
  );

  /// Starts a PayPal subscription checkout for the caller and returns the
  /// [CheckoutView] to redirect the buyer to.
  ///
  /// Resolution: the active, **paid** plan named by `planCode` (free plans
  /// cannot be checked out → reason `planNotFound`); its provider plan id for
  /// the requested cycle (`paypalPlanIdMonthly` / `paypalPlanIdAnnual`, null →
  /// reason `planNotProvisioned` until an admin runs the plan sync). When
  /// `promoCode` is set it must name an active `discount` promo whose synced
  /// PayPal plan variant then prices the checkout (variant ids are currently
  /// provisioned for the monthly price point only — documented limitation of
  /// the plan sync).
  ///
  /// Decision: the promo is **not redeemed here** — checkout only prices via
  /// the variant and carries the promo id in the provider `custom_id` for
  /// webhook attribution; redemption stays the explicit separate
  /// [redeemPromo] action.
  ///
  /// Decision: nothing about the PayPal session is persisted. The
  /// `Subscription` row is created / updated by the webhook reconciliation
  /// once the buyer approves; until then `getMy` simply shows no (pending)
  /// subscription, and an existing row is left untouched.
  ///
  /// Throws [SubscriptionException] with reason `notAuthenticated`,
  /// `checkoutFailed` (malformed request: empty plan code or a non-HTTPS /
  /// over-long return or cancel URL), `planNotFound`, `planNotProvisioned`,
  /// `alreadySubscribed` (an active or trialing subscription already exists)
  /// or `providerError` (billing unconfigured or the provider rejected the
  /// call).
  _ida.Future<_ip08qs2d.CheckoutView> createCheckout(
    _ifdvc6np.CheckoutRequest request,
  ) => caller.callServerEndpoint<_ip08qs2d.CheckoutView>(
    'gewerber_backend_commercial.subscription',
    'createCheckout',
    {'request': request},
  );

  /// Cancels the caller's current subscription.
  ///
  /// Own-managed trials (status `trialing` without a PayPal id) are canceled
  /// immediately: status `canceled`, `canceledAt = now`,
  /// `cancelAtPeriodEnd = false`, entitlement cache invalidated and a
  /// `subscription.canceled` audit row.
  ///
  /// PayPal-backed subscriptions cannot be canceled "at period end" at the
  /// provider (PayPal cancels immediately), so the owner-approved semantics
  /// are implemented as a deferred execution: the row is flagged
  /// `cancelAtPeriodEnd = true` and a [CancelSubscriptionFutureCall.cancel]
  /// is scheduled at `currentPeriodEnd` (which performs the provider cancel
  /// and flips the row to `canceled`). The entitlement cache is deliberately
  /// **not** invalidated — the user keeps access until the period ends.
  /// Writes a `subscription.cancel_scheduled` audit row.
  ///
  /// [reason] is an optional free-form note recorded in the audit trail.
  /// Throws [SubscriptionException] with reason `notAuthenticated`,
  /// `notFound` (no current subscription), `alreadyCanceled` (already
  /// scheduled), `providerError` (unconfigured billing, subscription not
  /// connected to a provider, or scheduling unavailable).
  _ida.Future<_i2v29clu.SubscriptionView> cancelMySubscription({
    String? reason,
  }) => caller.callServerEndpoint<_i2v29clu.SubscriptionView>(
    'gewerber_backend_commercial.subscription',
    'cancelMySubscription',
    {'reason': reason},
  );

  /// Switches the caller's subscription between the monthly and annual
  /// billing cycle via the provider (`reviseSubscription`).
  ///
  /// Requirements: a current `active` / `past_due` personal subscription with
  /// a PayPal id; `trialing` subscriptions must wait for the trial to
  /// convert (reason `providerError`, message "Wait until trial converts").
  /// Switching to the cycle the subscription is already on is a no-op that
  /// returns the current view without touching the provider.
  ///
  /// On success the local `billingCycle` is updated and `currentPeriodEnd` is
  /// approximated as now + 30 days / 365 days — the authoritative cycle
  /// boundaries are reconciled by the PayPal `UPDATED` webhook. Writes a
  /// `subscription.cycle_switched` audit row.
  ///
  /// Throws [SubscriptionException] with reason `notAuthenticated`,
  /// `notFound`, `planNotProvisioned` (target cycle has no synced PayPal
  /// plan), `providerError` (trialing, unconfigured billing, or no provider
  /// id) or `switchFailed` (the provider rejected the revision).
  _ida.Future<_i2v29clu.SubscriptionView> switchBillingCycle(
    _iu6iwuzk.SubscriptionBillingCycle newCycle,
  ) => caller.callServerEndpoint<_i2v29clu.SubscriptionView>(
    'gewerber_backend_commercial.subscription',
    'switchBillingCycle',
    {'newCycle': newCycle},
  );
}

/// Public waitlist endpoint used to collect email addresses for the launch
/// notification and the beta program while the product is under development.
///
/// The endpoint is unauthenticated by design. It is spam-protected by a
/// honeypot field and stays privacy-preserving: joining is idempotent and the
/// response never reveals whether an address was already registered.
/// {@category Endpoint}
class EndpointWaitlist extends _isc.EndpointRef {
  EndpointWaitlist(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.waitlist';

  _ida.Future<void> join(_i5a3xmr1.JoinWaitlistRequest request) =>
      caller.callServerEndpoint<void>(
        'gewerber_backend_commercial.waitlist',
        'join',
        {'request': request},
      );
}

class Caller extends _isc.ModuleEndpointCaller {
  Caller(_isc.ServerpodClientShared client) : super(client) {
    commercial = EndpointCommercial(this);
    adminSubscription = EndpointAdminSubscription(this);
    plan = EndpointPlan(this);
    subscription = EndpointSubscription(this);
    waitlist = EndpointWaitlist(this);
  }

  late final EndpointCommercial commercial;

  late final EndpointAdminSubscription adminSubscription;

  late final EndpointPlan plan;

  late final EndpointSubscription subscription;

  late final EndpointWaitlist waitlist;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {
    'gewerber_backend_commercial.commercial': commercial,
    'gewerber_backend_commercial.adminSubscription': adminSubscription,
    'gewerber_backend_commercial.plan': plan,
    'gewerber_backend_commercial.subscription': subscription,
    'gewerber_backend_commercial.waitlist': waitlist,
  };
}
