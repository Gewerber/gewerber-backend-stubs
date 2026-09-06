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
import '../../../modules/subscription/models/promo_discount_type.dart'
    as _iduof0ej;

/// Payload of `adminSubscription.codesCreate` (admin only).
///
/// The server normalizes `code` (trim, lowercase, inner whitespace removed),
/// resolves `planCode` against the plan catalog and enforces the per-kind
/// sanity rules documented on the endpoint. `status` is not part of the
/// request: new codes start `active` and are managed through
/// `codesSetStatus`.
abstract class AdminPromoCodeCreateRequest
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  AdminPromoCodeCreateRequest._({
    required this.code,
    required this.kind,
    this.discountType,
    this.discountPercent,
    this.discountMinor,
    this.trialDays,
    this.planCode,
    this.maxRedemptions,
    int? perUserLimit,
    this.validFrom,
    this.validUntil,
    this.campaign,
    this.ref,
    this.note,
  }) : perUserLimit = perUserLimit ?? 1;

  factory AdminPromoCodeCreateRequest({
    required String code,
    required _iaan25w0.PromoCodeKind kind,
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
  }) = _AdminPromoCodeCreateRequestImpl;

  factory AdminPromoCodeCreateRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return AdminPromoCodeCreateRequest(
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
      planCode: jsonSerialization['planCode'] as String?,
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
    );
  }

  /// Raw code string as printed by the campaign (normalized server-side).
  String code;

  /// What the code grants.
  _iaan25w0.PromoCodeKind kind;

  /// How the discount is expressed (required for `discount` codes).
  _iduof0ej.PromoDiscountType? discountType;

  /// Percent value 1-100 (required with `discountType: percent`).
  int? discountPercent;

  /// Fixed amount in EUR minor units > 0 (required with
  /// `discountType: fixed`).
  int? discountMinor;

  /// Trial days > 0 (required for `trial` codes).
  int? trialDays;

  /// Code of the plan the benefit is tied to (must exist in the catalog).
  String? planCode;

  /// Global redemption cap (>= 1 when set, null for uncapped).
  int? maxRedemptions;

  /// Redemptions allowed per user (>= 1, default 1).
  int perUserLimit;

  /// Start of the validity window, null for "immediately".
  DateTime? validFrom;

  /// End of the validity window, null for "never"; must be after
  /// `validFrom` when both are set.
  DateTime? validUntil;

  /// Free-form campaign label for reporting.
  String? campaign;

  /// Free-form referral / press source label.
  String? ref;

  /// Internal note for operators.
  String? note;

  /// Returns a shallow copy of this [AdminPromoCodeCreateRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  AdminPromoCodeCreateRequest copyWith({
    String? code,
    _iaan25w0.PromoCodeKind? kind,
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
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__':
          'gewerber_backend_commercial.AdminPromoCodeCreateRequest',
      'code': code,
      'kind': kind.toJson(),
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
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__':
          'gewerber_backend_commercial.AdminPromoCodeCreateRequest',
      'code': code,
      'kind': kind.toJson(),
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
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AdminPromoCodeCreateRequestImpl extends AdminPromoCodeCreateRequest {
  _AdminPromoCodeCreateRequestImpl({
    required String code,
    required _iaan25w0.PromoCodeKind kind,
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
  }) : super._(
         code: code,
         kind: kind,
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
       );

  /// Returns a shallow copy of this [AdminPromoCodeCreateRequest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  AdminPromoCodeCreateRequest copyWith({
    String? code,
    _iaan25w0.PromoCodeKind? kind,
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
  }) {
    return AdminPromoCodeCreateRequest(
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
    );
  }
}
