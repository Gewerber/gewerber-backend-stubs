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
import '../../../modules/subscription/models/promo_code_status.dart'
    as _i72owr20;
import '../../../modules/subscription/models/promo_discount_type.dart'
    as _iduof0ej;

abstract class PromoCode
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PromoCode._({
    this.id,
    required this.code,
    required this.kind,
    this.discountType,
    this.discountPercent,
    this.discountMinor,
    this.trialDays,
    this.planId,
    this.maxRedemptions,
    int? perUserLimit,
    this.validFrom,
    this.validUntil,
    this.campaign,
    this.ref,
    this.note,
    _i72owr20.PromoCodeStatus? status,
    this.paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : perUserLimit = perUserLimit ?? 1,
       status = status ?? _i72owr20.PromoCodeStatus.active,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory PromoCode({
    int? id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PromoCodeImpl;

  factory PromoCode.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoCode(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      kind: _iaan25w0.PromoCodeKind.fromJson(
        (jsonSerialization['kind'] as String),
      ),
      discountType: jsonSerialization['discountType'] == null
          ? null
          : _iduof0ej.PromoDiscountType.fromJson(
              (jsonSerialization['discountType'] as String),
            ),
      discountPercent: jsonSerialization['discountPercent'] as int?,
      discountMinor: jsonSerialization['discountMinor'] as int?,
      trialDays: jsonSerialization['trialDays'] as int?,
      planId: jsonSerialization['planId'] as int?,
      maxRedemptions: jsonSerialization['maxRedemptions'] as int?,
      perUserLimit: jsonSerialization['perUserLimit'] as int?,
      validFrom: jsonSerialization['validFrom'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['validFrom']),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['validUntil'],
            ),
      campaign: jsonSerialization['campaign'] as String?,
      ref: jsonSerialization['ref'] as String?,
      note: jsonSerialization['note'] as String?,
      status: jsonSerialization['status'] == null
          ? null
          : _i72owr20.PromoCodeStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      paypalPlanVariantId: jsonSerialization['paypalPlanVariantId'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String code;

  _iaan25w0.PromoCodeKind kind;

  _iduof0ej.PromoDiscountType? discountType;

  int? discountPercent;

  int? discountMinor;

  int? trialDays;

  int? planId;

  int? maxRedemptions;

  int perUserLimit;

  DateTime? validFrom;

  DateTime? validUntil;

  String? campaign;

  String? ref;

  String? note;

  _i72owr20.PromoCodeStatus status;

  String? paypalPlanVariantId;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [PromoCode]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PromoCode copyWith({
    int? id,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoCode',
      if (id != null) 'id': id,
      'code': code,
      'kind': kind.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planId != null) 'planId': planId,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      'status': status.toJson(),
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoCode',
      if (id != null) 'id': id,
      'code': code,
      'kind': kind.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planId != null) 'planId': planId,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      'status': status.toJson(),
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoCodeImpl extends PromoCode {
  _PromoCodeImpl({
    int? id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         code: code,
         kind: kind,
         discountType: discountType,
         discountPercent: discountPercent,
         discountMinor: discountMinor,
         trialDays: trialDays,
         planId: planId,
         maxRedemptions: maxRedemptions,
         perUserLimit: perUserLimit,
         validFrom: validFrom,
         validUntil: validUntil,
         campaign: campaign,
         ref: ref,
         note: note,
         status: status,
         paypalPlanVariantId: paypalPlanVariantId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PromoCode]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PromoCode copyWith({
    Object? id = _Undefined,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    Object? discountType = _Undefined,
    Object? discountPercent = _Undefined,
    Object? discountMinor = _Undefined,
    Object? trialDays = _Undefined,
    Object? planId = _Undefined,
    Object? maxRedemptions = _Undefined,
    int? perUserLimit,
    Object? validFrom = _Undefined,
    Object? validUntil = _Undefined,
    Object? campaign = _Undefined,
    Object? ref = _Undefined,
    Object? note = _Undefined,
    _i72owr20.PromoCodeStatus? status,
    Object? paypalPlanVariantId = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PromoCode(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      kind: kind ?? this.kind,
      discountType: discountType is _iduof0ej.PromoDiscountType?
          ? discountType
          : this.discountType,
      discountPercent: discountPercent is int?
          ? discountPercent
          : this.discountPercent,
      discountMinor: discountMinor is int? ? discountMinor : this.discountMinor,
      trialDays: trialDays is int? ? trialDays : this.trialDays,
      planId: planId is int? ? planId : this.planId,
      maxRedemptions: maxRedemptions is int?
          ? maxRedemptions
          : this.maxRedemptions,
      perUserLimit: perUserLimit ?? this.perUserLimit,
      validFrom: validFrom is DateTime? ? validFrom : this.validFrom,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
      campaign: campaign is String? ? campaign : this.campaign,
      ref: ref is String? ? ref : this.ref,
      note: note is String? ? note : this.note,
      status: status ?? this.status,
      paypalPlanVariantId: paypalPlanVariantId is String?
          ? paypalPlanVariantId
          : this.paypalPlanVariantId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
