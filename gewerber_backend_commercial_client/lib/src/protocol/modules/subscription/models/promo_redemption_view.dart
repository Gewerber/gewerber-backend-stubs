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

import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../../../modules/subscription/models/promo_code_kind.dart' as _iaan25w0;
import '../../../modules/subscription/models/subscription_status.dart'
    as _ixqg6znr;

/// Result of a successful promo code redemption, returned by the
/// `subscription.redeemPromo` endpoint.
abstract class PromoRedemptionView
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PromoRedemptionView._({
    required this.kind,
    this.planCode,
    this.trialDays,
    this.subscriptionStatus,
    required this.redeemedAt,
  });

  factory PromoRedemptionView({
    required _iaan25w0.PromoCodeKind kind,
    String? planCode,
    int? trialDays,
    _ixqg6znr.SubscriptionStatus? subscriptionStatus,
    required DateTime redeemedAt,
  }) = _PromoRedemptionViewImpl;

  factory PromoRedemptionView.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoRedemptionView(
      kind: _iaan25w0.PromoCodeKind.fromJson(
        (jsonSerialization['kind'] as String),
      ),
      planCode: jsonSerialization['planCode'] as String?,
      trialDays: jsonSerialization['trialDays'] as int?,
      subscriptionStatus: jsonSerialization['subscriptionStatus'] == null
          ? null
          : _ixqg6znr.SubscriptionStatus.fromJson(
              (jsonSerialization['subscriptionStatus'] as String),
            ),
      redeemedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['redeemedAt'],
      ),
    );
  }

  /// The kind of benefit that was redeemed.
  _iaan25w0.PromoCodeKind kind;

  /// Code of the plan the benefit was granted on (trial codes; the free
  /// plan is used as fallback when the code does not name one).
  String? planCode;

  /// Days of trial granted (trial codes only).
  int? trialDays;

  /// Status of the subscription created by the redemption. Null for
  /// `attribution` and `discount` codes, which never create a subscription
  /// in this phase.
  _ixqg6znr.SubscriptionStatus? subscriptionStatus;

  /// When the redemption was recorded.
  DateTime redeemedAt;

  /// Returns a shallow copy of this [PromoRedemptionView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PromoRedemptionView copyWith({
    _iaan25w0.PromoCodeKind? kind,
    String? planCode,
    int? trialDays,
    _ixqg6znr.SubscriptionStatus? subscriptionStatus,
    DateTime? redeemedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemptionView',
      'kind': kind.toJson(),
      if (planCode != null) 'planCode': planCode,
      if (trialDays != null) 'trialDays': trialDays,
      if (subscriptionStatus != null)
        'subscriptionStatus': subscriptionStatus?.toJson(),
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemptionView',
      'kind': kind.toJson(),
      if (planCode != null) 'planCode': planCode,
      if (trialDays != null) 'trialDays': trialDays,
      if (subscriptionStatus != null)
        'subscriptionStatus': subscriptionStatus?.toJson(),
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoRedemptionViewImpl extends PromoRedemptionView {
  _PromoRedemptionViewImpl({
    required _iaan25w0.PromoCodeKind kind,
    String? planCode,
    int? trialDays,
    _ixqg6znr.SubscriptionStatus? subscriptionStatus,
    required DateTime redeemedAt,
  }) : super._(
         kind: kind,
         planCode: planCode,
         trialDays: trialDays,
         subscriptionStatus: subscriptionStatus,
         redeemedAt: redeemedAt,
       );

  /// Returns a shallow copy of this [PromoRedemptionView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PromoRedemptionView copyWith({
    _iaan25w0.PromoCodeKind? kind,
    Object? planCode = _Undefined,
    Object? trialDays = _Undefined,
    Object? subscriptionStatus = _Undefined,
    DateTime? redeemedAt,
  }) {
    return PromoRedemptionView(
      kind: kind ?? this.kind,
      planCode: planCode is String? ? planCode : this.planCode,
      trialDays: trialDays is int? ? trialDays : this.trialDays,
      subscriptionStatus: subscriptionStatus is _ixqg6znr.SubscriptionStatus?
          ? subscriptionStatus
          : this.subscriptionStatus,
      redeemedAt: redeemedAt ?? this.redeemedAt,
    );
  }
}
