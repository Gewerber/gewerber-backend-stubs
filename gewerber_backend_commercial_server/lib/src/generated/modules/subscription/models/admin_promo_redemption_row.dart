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

/// One redemption row of a promo code as surfaced by
/// `adminSubscription.codeGet`.
abstract class AdminPromoRedemptionRow
    implements _is.SerializableModel, _is.ProtocolSerialization {
  AdminPromoRedemptionRow._({
    required this.userId,
    this.businessId,
    required this.redeemedAt,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.appliedSubscriptionId,
  });

  factory AdminPromoRedemptionRow({
    required String userId,
    int? businessId,
    required DateTime redeemedAt,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    int? appliedSubscriptionId,
  }) = _AdminPromoRedemptionRowImpl;

  factory AdminPromoRedemptionRow.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return AdminPromoRedemptionRow(
      userId: jsonSerialization['userId'] as String,
      businessId: jsonSerialization['businessId'] as int?,
      redeemedAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['redeemedAt'],
      ),
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      appliedSubscriptionId: jsonSerialization['appliedSubscriptionId'] as int?,
    );
  }

  /// Id of the user who redeemed the code (`AuthUser.id`, UUID string).
  String userId;

  /// Business scope of the redemption, null for personal ones.
  int? businessId;

  /// When the redemption was recorded.
  DateTime redeemedAt;

  /// UTM source captured at redemption, if any.
  String? utmSource;

  /// UTM medium captured at redemption, if any.
  String? utmMedium;

  /// UTM campaign captured at redemption, if any.
  String? utmCampaign;

  /// Subscription created by the redemption (trial codes), if any.
  int? appliedSubscriptionId;

  /// Returns a shallow copy of this [AdminPromoRedemptionRow]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  AdminPromoRedemptionRow copyWith({
    String? userId,
    int? businessId,
    DateTime? redeemedAt,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    int? appliedSubscriptionId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPromoRedemptionRow',
      'userId': userId,
      if (businessId != null) 'businessId': businessId,
      'redeemedAt': redeemedAt.toJson(),
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPromoRedemptionRow',
      'userId': userId,
      if (businessId != null) 'businessId': businessId,
      'redeemedAt': redeemedAt.toJson(),
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AdminPromoRedemptionRowImpl extends AdminPromoRedemptionRow {
  _AdminPromoRedemptionRowImpl({
    required String userId,
    int? businessId,
    required DateTime redeemedAt,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    int? appliedSubscriptionId,
  }) : super._(
         userId: userId,
         businessId: businessId,
         redeemedAt: redeemedAt,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         appliedSubscriptionId: appliedSubscriptionId,
       );

  /// Returns a shallow copy of this [AdminPromoRedemptionRow]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  AdminPromoRedemptionRow copyWith({
    String? userId,
    Object? businessId = _Undefined,
    DateTime? redeemedAt,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    Object? appliedSubscriptionId = _Undefined,
  }) {
    return AdminPromoRedemptionRow(
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      redeemedAt: redeemedAt ?? this.redeemedAt,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      appliedSubscriptionId: appliedSubscriptionId is int?
          ? appliedSubscriptionId
          : this.appliedSubscriptionId,
    );
  }
}
