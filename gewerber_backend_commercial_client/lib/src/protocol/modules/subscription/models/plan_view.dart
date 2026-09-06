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
import '../../../modules/subscription/models/plan_tier.dart' as _indck975;

abstract class PlanView
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PlanView._({
    required this.code,
    required this.tier,
    required this.name,
    required this.currency,
    required this.priceMonthlyMinor,
    required this.priceAnnualMinor,
    required this.features,
  });

  factory PlanView({
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    required String currency,
    required int priceMonthlyMinor,
    required int priceAnnualMinor,
    required List<String> features,
  }) = _PlanViewImpl;

  factory PlanView.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlanView(
      code: jsonSerialization['code'] as String,
      tier: _indck975.PlanTier.fromJson((jsonSerialization['tier'] as String)),
      name: jsonSerialization['name'] as String,
      currency: jsonSerialization['currency'] as String,
      priceMonthlyMinor: jsonSerialization['priceMonthlyMinor'] as int,
      priceAnnualMinor: jsonSerialization['priceAnnualMinor'] as int,
      features: _i0tjs2ah.Protocol().deserialize<List<String>>(
        jsonSerialization['features'],
      ),
    );
  }

  String code;

  _indck975.PlanTier tier;

  String name;

  String currency;

  int priceMonthlyMinor;

  int priceAnnualMinor;

  List<String> features;

  /// Returns a shallow copy of this [PlanView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PlanView copyWith({
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    List<String>? features,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PlanView',
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      'features': features.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PlanView',
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      'features': features.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _PlanViewImpl extends PlanView {
  _PlanViewImpl({
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    required String currency,
    required int priceMonthlyMinor,
    required int priceAnnualMinor,
    required List<String> features,
  }) : super._(
         code: code,
         tier: tier,
         name: name,
         currency: currency,
         priceMonthlyMinor: priceMonthlyMinor,
         priceAnnualMinor: priceAnnualMinor,
         features: features,
       );

  /// Returns a shallow copy of this [PlanView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PlanView copyWith({
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    List<String>? features,
  }) {
    return PlanView(
      code: code ?? this.code,
      tier: tier ?? this.tier,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      priceMonthlyMinor: priceMonthlyMinor ?? this.priceMonthlyMinor,
      priceAnnualMinor: priceAnnualMinor ?? this.priceAnnualMinor,
      features: features ?? this.features.map((e0) => e0).toList(),
    );
  }
}
