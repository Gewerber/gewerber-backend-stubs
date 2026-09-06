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

abstract class PromoRedemption
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PromoRedemption._({
    this.id,
    required this.promoCodeId,
    required this.userId,
    this.businessId,
    this.appliedSubscriptionId,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    DateTime? redeemedAt,
  }) : redeemedAt = redeemedAt ?? DateTime.now();

  factory PromoRedemption({
    int? id,
    required int promoCodeId,
    required _isc.UuidValue userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  }) = _PromoRedemptionImpl;

  factory PromoRedemption.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoRedemption(
      id: jsonSerialization['id'] as int?,
      promoCodeId: jsonSerialization['promoCodeId'] as int,
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      businessId: jsonSerialization['businessId'] as int?,
      appliedSubscriptionId: jsonSerialization['appliedSubscriptionId'] as int?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      redeemedAt: jsonSerialization['redeemedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['redeemedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int promoCodeId;

  _isc.UuidValue userId;

  int? businessId;

  int? appliedSubscriptionId;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  DateTime redeemedAt;

  /// Returns a shallow copy of this [PromoRedemption]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PromoRedemption copyWith({
    int? id,
    int? promoCodeId,
    _isc.UuidValue? userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemption',
      if (id != null) 'id': id,
      'promoCodeId': promoCodeId,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemption',
      if (id != null) 'id': id,
      'promoCodeId': promoCodeId,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoRedemptionImpl extends PromoRedemption {
  _PromoRedemptionImpl({
    int? id,
    required int promoCodeId,
    required _isc.UuidValue userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  }) : super._(
         id: id,
         promoCodeId: promoCodeId,
         userId: userId,
         businessId: businessId,
         appliedSubscriptionId: appliedSubscriptionId,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         redeemedAt: redeemedAt,
       );

  /// Returns a shallow copy of this [PromoRedemption]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PromoRedemption copyWith({
    Object? id = _Undefined,
    int? promoCodeId,
    _isc.UuidValue? userId,
    Object? businessId = _Undefined,
    Object? appliedSubscriptionId = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    DateTime? redeemedAt,
  }) {
    return PromoRedemption(
      id: id is int? ? id : this.id,
      promoCodeId: promoCodeId ?? this.promoCodeId,
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      appliedSubscriptionId: appliedSubscriptionId is int?
          ? appliedSubscriptionId
          : this.appliedSubscriptionId,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      redeemedAt: redeemedAt ?? this.redeemedAt,
    );
  }
}
