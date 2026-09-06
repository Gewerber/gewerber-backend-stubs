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

import 'package:gewerber_backend_commercial_client/src/protocol/protocol.dart'
    as _i0tjs2ah;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../../../modules/subscription/models/admin_promo_redemption_row.dart'
    as _i16m6uzh;
import '../../../modules/subscription/models/promo_code_kind.dart' as _iaan25w0;
import '../../../modules/subscription/models/promo_code_status.dart'
    as _i72owr20;
import '../../../modules/subscription/models/promo_discount_type.dart'
    as _iduof0ej;

/// Full detail of one promo code for the administration API
/// (`adminSubscription.codeGet`): every [AdminPromoCodeView] field plus the
/// 20 most recent redemptions.
abstract class AdminPromoCodeDetail
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  AdminPromoCodeDetail._({
    required this.id,
    required this.code,
    required this.kind,
    required this.status,
    this.discountType,
    this.discountPercent,
    this.discountMinor,
    this.trialDays,
    this.planCode,
    this.maxRedemptions,
    required this.perUserLimit,
    this.validFrom,
    this.validUntil,
    this.campaign,
    this.ref,
    this.note,
    this.paypalPlanVariantId,
    required this.createdAt,
    required this.redemptionCount,
    required this.redemptions,
  });

  factory AdminPromoCodeDetail({
    required int id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    required _i72owr20.PromoCodeStatus status,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    String? planCode,
    int? maxRedemptions,
    required int perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    String? paypalPlanVariantId,
    required DateTime createdAt,
    required int redemptionCount,
    required List<_i16m6uzh.AdminPromoRedemptionRow> redemptions,
  }) = _AdminPromoCodeDetailImpl;

  factory AdminPromoCodeDetail.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return AdminPromoCodeDetail(
      id: jsonSerialization['id'] as int,
      code: jsonSerialization['code'] as String,
      kind: _iaan25w0.PromoCodeKind.fromJson(
        (jsonSerialization['kind'] as String),
      ),
      status: _i72owr20.PromoCodeStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      discountType: jsonSerialization['discountType'] == null
          ? null
          : _iduof0ej.PromoDiscountType.fromJson(
              (jsonSerialization['discountType'] as String),
            ),
      discountPercent: jsonSerialization['discountPercent'] as int?,
      discountMinor: jsonSerialization['discountMinor'] as int?,
      trialDays: jsonSerialization['trialDays'] as int?,
      planCode: jsonSerialization['planCode'] as String?,
      maxRedemptions: jsonSerialization['maxRedemptions'] as int?,
      perUserLimit: jsonSerialization['perUserLimit'] as int,
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
      paypalPlanVariantId: jsonSerialization['paypalPlanVariantId'] as String?,
      createdAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      redemptionCount: jsonSerialization['redemptionCount'] as int,
      redemptions: _i0tjs2ah.Protocol()
          .deserialize<List<_i16m6uzh.AdminPromoRedemptionRow>>(
            jsonSerialization['redemptions'],
          ),
    );
  }

  /// Database id of the promo code row.
  int id;

  /// Normalized (lowercase) code string.
  String code;

  /// What the code grants.
  _iaan25w0.PromoCodeKind kind;

  /// Lifecycle status of the code.
  _i72owr20.PromoCodeStatus status;

  /// How the discount is expressed (discount codes only).
  _iduof0ej.PromoDiscountType? discountType;

  /// Percent discount (discount codes with `percent` type).
  int? discountPercent;

  /// Fixed discount in minor currency units (discount codes with `fixed`
  /// type).
  int? discountMinor;

  /// Trial days granted (trial codes).
  int? trialDays;

  /// Code of the plan the row references, null when it names none.
  String? planCode;

  /// Global redemption cap, null when uncapped.
  int? maxRedemptions;

  /// Redemptions allowed per user.
  int perUserLimit;

  /// Start of the validity window, null when unbounded.
  DateTime? validFrom;

  /// End of the validity window, null when unbounded.
  DateTime? validUntil;

  /// Free-form campaign label for reporting.
  String? campaign;

  /// Free-form referral / press source label.
  String? ref;

  /// Internal note for operators.
  String? note;

  /// PayPal plan variant id used at checkout (filled by the Phase 2B
  /// plan-sync; null until then).
  String? paypalPlanVariantId;

  /// When the code was created.
  DateTime createdAt;

  /// Total number of redemptions recorded for this code.
  int redemptionCount;

  /// The 20 most recent redemptions, newest first.
  List<_i16m6uzh.AdminPromoRedemptionRow> redemptions;

  /// Returns a shallow copy of this [AdminPromoCodeDetail]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  AdminPromoCodeDetail copyWith({
    int? id,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    _i72owr20.PromoCodeStatus? status,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    String? planCode,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    int? redemptionCount,
    List<_i16m6uzh.AdminPromoRedemptionRow>? redemptions,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPromoCodeDetail',
      'id': id,
      'code': code,
      'kind': kind.toJson(),
      'status': status.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planCode != null) 'planCode': planCode,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'redemptionCount': redemptionCount,
      'redemptions': redemptions.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPromoCodeDetail',
      'id': id,
      'code': code,
      'kind': kind.toJson(),
      'status': status.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planCode != null) 'planCode': planCode,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'redemptionCount': redemptionCount,
      'redemptions': redemptions.toJson(
        valueToJson: (v) => v.toJsonForProtocol(),
      ),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AdminPromoCodeDetailImpl extends AdminPromoCodeDetail {
  _AdminPromoCodeDetailImpl({
    required int id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    required _i72owr20.PromoCodeStatus status,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    String? planCode,
    int? maxRedemptions,
    required int perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    String? paypalPlanVariantId,
    required DateTime createdAt,
    required int redemptionCount,
    required List<_i16m6uzh.AdminPromoRedemptionRow> redemptions,
  }) : super._(
         id: id,
         code: code,
         kind: kind,
         status: status,
         discountType: discountType,
         discountPercent: discountPercent,
         discountMinor: discountMinor,
         trialDays: trialDays,
         planCode: planCode,
         maxRedemptions: maxRedemptions,
         perUserLimit: perUserLimit,
         validFrom: validFrom,
         validUntil: validUntil,
         campaign: campaign,
         ref: ref,
         note: note,
         paypalPlanVariantId: paypalPlanVariantId,
         createdAt: createdAt,
         redemptionCount: redemptionCount,
         redemptions: redemptions,
       );

  /// Returns a shallow copy of this [AdminPromoCodeDetail]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  AdminPromoCodeDetail copyWith({
    int? id,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    _i72owr20.PromoCodeStatus? status,
    Object? discountType = _Undefined,
    Object? discountPercent = _Undefined,
    Object? discountMinor = _Undefined,
    Object? trialDays = _Undefined,
    Object? planCode = _Undefined,
    Object? maxRedemptions = _Undefined,
    int? perUserLimit,
    Object? validFrom = _Undefined,
    Object? validUntil = _Undefined,
    Object? campaign = _Undefined,
    Object? ref = _Undefined,
    Object? note = _Undefined,
    Object? paypalPlanVariantId = _Undefined,
    DateTime? createdAt,
    int? redemptionCount,
    List<_i16m6uzh.AdminPromoRedemptionRow>? redemptions,
  }) {
    return AdminPromoCodeDetail(
      id: id ?? this.id,
      code: code ?? this.code,
      kind: kind ?? this.kind,
      status: status ?? this.status,
      discountType: discountType is _iduof0ej.PromoDiscountType?
          ? discountType
          : this.discountType,
      discountPercent: discountPercent is int?
          ? discountPercent
          : this.discountPercent,
      discountMinor: discountMinor is int? ? discountMinor : this.discountMinor,
      trialDays: trialDays is int? ? trialDays : this.trialDays,
      planCode: planCode is String? ? planCode : this.planCode,
      maxRedemptions: maxRedemptions is int?
          ? maxRedemptions
          : this.maxRedemptions,
      perUserLimit: perUserLimit ?? this.perUserLimit,
      validFrom: validFrom is DateTime? ? validFrom : this.validFrom,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
      campaign: campaign is String? ? campaign : this.campaign,
      ref: ref is String? ? ref : this.ref,
      note: note is String? ? note : this.note,
      paypalPlanVariantId: paypalPlanVariantId is String?
          ? paypalPlanVariantId
          : this.paypalPlanVariantId,
      createdAt: createdAt ?? this.createdAt,
      redemptionCount: redemptionCount ?? this.redemptionCount,
      redemptions:
          redemptions ?? this.redemptions.map((e0) => e0.copyWith()).toList(),
    );
  }
}
