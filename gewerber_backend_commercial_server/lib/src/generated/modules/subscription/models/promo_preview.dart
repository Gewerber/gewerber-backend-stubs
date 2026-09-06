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
import '../../../modules/subscription/models/promo_code_kind.dart' as _iaan25w0;
import '../../../modules/subscription/models/promo_discount_type.dart'
    as _iduof0ej;

/// Read-only preview of what a promo code would grant, returned by the
/// `subscription.validatePromo` endpoint. Producing a preview never mutates
/// any state; call `subscription.redeemPromo` to actually redeem.
abstract class PromoPreview
    implements _is.SerializableModel, _is.ProtocolSerialization {
  PromoPreview._({
    required this.code,
    required this.kind,
    this.trialDays,
    this.discountPercent,
    this.discountMinor,
    this.discountType,
    this.planCode,
    this.campaign,
    this.validUntil,
  });

  factory PromoPreview({
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    int? trialDays,
    int? discountPercent,
    int? discountMinor,
    _iduof0ej.PromoDiscountType? discountType,
    String? planCode,
    String? campaign,
    DateTime? validUntil,
  }) = _PromoPreviewImpl;

  factory PromoPreview.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoPreview(
      code: jsonSerialization['code'] as String,
      kind: _iaan25w0.PromoCodeKind.fromJson(
        (jsonSerialization['kind'] as String),
      ),
      trialDays: jsonSerialization['trialDays'] as int?,
      discountPercent: jsonSerialization['discountPercent'] as int?,
      discountMinor: jsonSerialization['discountMinor'] as int?,
      discountType: jsonSerialization['discountType'] == null
          ? null
          : _iduof0ej.PromoDiscountType.fromJson(
              (jsonSerialization['discountType'] as String),
            ),
      planCode: jsonSerialization['planCode'] as String?,
      campaign: jsonSerialization['campaign'] as String?,
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['validUntil']),
    );
  }

  /// The normalized (lowercase, whitespace-stripped) code.
  String code;

  /// What kind of benefit the code grants.
  _iaan25w0.PromoCodeKind kind;

  /// Days of trial granted (trial codes only).
  int? trialDays;

  /// Percentage discount (discount codes with `percent` type).
  int? discountPercent;

  /// Fixed discount in EUR minor units (discount codes with `fixed` type).
  int? discountMinor;

  /// How the discount value is expressed (discount codes only).
  _iduof0ej.PromoDiscountType? discountType;

  /// Code of the plan the benefit is tied to, when the code names one.
  String? planCode;

  /// Marketing campaign label attached to the code.
  String? campaign;

  /// End of the validity window (null = unbounded).
  DateTime? validUntil;

  /// Returns a shallow copy of this [PromoPreview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PromoPreview copyWith({
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    int? trialDays,
    int? discountPercent,
    int? discountMinor,
    _iduof0ej.PromoDiscountType? discountType,
    String? planCode,
    String? campaign,
    DateTime? validUntil,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoPreview',
      'code': code,
      'kind': kind.toJson(),
      if (trialDays != null) 'trialDays': trialDays,
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (planCode != null) 'planCode': planCode,
      if (campaign != null) 'campaign': campaign,
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoPreview',
      'code': code,
      'kind': kind.toJson(),
      if (trialDays != null) 'trialDays': trialDays,
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (planCode != null) 'planCode': planCode,
      if (campaign != null) 'campaign': campaign,
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoPreviewImpl extends PromoPreview {
  _PromoPreviewImpl({
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    int? trialDays,
    int? discountPercent,
    int? discountMinor,
    _iduof0ej.PromoDiscountType? discountType,
    String? planCode,
    String? campaign,
    DateTime? validUntil,
  }) : super._(
         code: code,
         kind: kind,
         trialDays: trialDays,
         discountPercent: discountPercent,
         discountMinor: discountMinor,
         discountType: discountType,
         planCode: planCode,
         campaign: campaign,
         validUntil: validUntil,
       );

  /// Returns a shallow copy of this [PromoPreview]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PromoPreview copyWith({
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    Object? trialDays = _Undefined,
    Object? discountPercent = _Undefined,
    Object? discountMinor = _Undefined,
    Object? discountType = _Undefined,
    Object? planCode = _Undefined,
    Object? campaign = _Undefined,
    Object? validUntil = _Undefined,
  }) {
    return PromoPreview(
      code: code ?? this.code,
      kind: kind ?? this.kind,
      trialDays: trialDays is int? ? trialDays : this.trialDays,
      discountPercent: discountPercent is int?
          ? discountPercent
          : this.discountPercent,
      discountMinor: discountMinor is int? ? discountMinor : this.discountMinor,
      discountType: discountType is _iduof0ej.PromoDiscountType?
          ? discountType
          : this.discountType,
      planCode: planCode is String? ? planCode : this.planCode,
      campaign: campaign is String? ? campaign : this.campaign,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
    );
  }
}
