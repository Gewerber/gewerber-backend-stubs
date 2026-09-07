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

import 'package:serverpod/serverpod.dart' as _is;
import '../../../modules/subscription/models/subscription_billing_cycle.dart'
    as _i8537g6n;

/// Payload of `subscription.createCheckout`: starts a PayPal subscription
/// checkout for the caller.
///
/// The endpoint validates `planCode` (must name an active, paid plan),
/// `returnUrl` / `cancelUrl` (must be HTTPS URLs of at most 2048
/// characters) and, when set, `promoCode` (a discount code whose PayPal
/// plan variant prices the checkout). Validation failures surface as a
/// `SubscriptionException` with reason `checkoutFailed`.
abstract class CheckoutRequest
    implements _is.SerializableModel, _is.ProtocolSerialization {
  CheckoutRequest._({
    required this.planCode,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    this.promoCode,
    required this.returnUrl,
    required this.cancelUrl,
  }) : billingCycle =
           billingCycle ?? _i8537g6n.SubscriptionBillingCycle.monthly;

  factory CheckoutRequest({
    required String planCode,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? promoCode,
    required String returnUrl,
    required String cancelUrl,
  }) = _CheckoutRequestImpl;

  factory CheckoutRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return CheckoutRequest(
      planCode: jsonSerialization['planCode'] as String,
      billingCycle: jsonSerialization['billingCycle'] == null
          ? null
          : _i8537g6n.SubscriptionBillingCycle.fromJson(
              (jsonSerialization['billingCycle'] as String),
            ),
      promoCode: jsonSerialization['promoCode'] as String?,
      returnUrl: jsonSerialization['returnUrl'] as String,
      cancelUrl: jsonSerialization['cancelUrl'] as String,
    );
  }

  /// Code of the plan to subscribe to (e.g. `pro`); free plans cannot be
  /// checked out.
  String planCode;

  /// Billing cycle to subscribe on.
  _i8537g6n.SubscriptionBillingCycle billingCycle;

  /// Optional discount promo code; it only prices the checkout via its
  /// synced PayPal plan variant, redemption stays an explicit separate
  /// action (`subscription.redeemPromo`).
  String? promoCode;

  /// HTTPS URL PayPal redirects the buyer to after approving.
  String returnUrl;

  /// HTTPS URL PayPal redirects the buyer to when the approval is
  /// cancelled.
  String cancelUrl;

  /// Returns a shallow copy of this [CheckoutRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  CheckoutRequest copyWith({
    String? planCode,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? promoCode,
    String? returnUrl,
    String? cancelUrl,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.CheckoutRequest',
      'planCode': planCode,
      'billingCycle': billingCycle.toJson(),
      if (promoCode != null) 'promoCode': promoCode,
      'returnUrl': returnUrl,
      'cancelUrl': cancelUrl,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.CheckoutRequest',
      'planCode': planCode,
      'billingCycle': billingCycle.toJson(),
      if (promoCode != null) 'promoCode': promoCode,
      'returnUrl': returnUrl,
      'cancelUrl': cancelUrl,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CheckoutRequestImpl extends CheckoutRequest {
  _CheckoutRequestImpl({
    required String planCode,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? promoCode,
    required String returnUrl,
    required String cancelUrl,
  }) : super._(
         planCode: planCode,
         billingCycle: billingCycle,
         promoCode: promoCode,
         returnUrl: returnUrl,
         cancelUrl: cancelUrl,
       );

  /// Returns a shallow copy of this [CheckoutRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  CheckoutRequest copyWith({
    String? planCode,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    Object? promoCode = _Undefined,
    String? returnUrl,
    String? cancelUrl,
  }) {
    return CheckoutRequest(
      planCode: planCode ?? this.planCode,
      billingCycle: billingCycle ?? this.billingCycle,
      promoCode: promoCode is String? ? promoCode : this.promoCode,
      returnUrl: returnUrl ?? this.returnUrl,
      cancelUrl: cancelUrl ?? this.cancelUrl,
    );
  }
}
