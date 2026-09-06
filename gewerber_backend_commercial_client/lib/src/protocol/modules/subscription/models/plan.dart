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

abstract class Plan
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Plan._({
    this.id,
    required this.code,
    required this.tier,
    required this.name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    this.paypalProductId,
    this.paypalPlanIdMonthly,
    this.paypalPlanIdAnnual,
    required this.features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : currency = currency ?? 'eur',
       priceMonthlyMinor = priceMonthlyMinor ?? 0,
       priceAnnualMinor = priceAnnualMinor ?? 0,
       isActive = isActive ?? true,
       sortOrder = sortOrder ?? 0,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory Plan({
    int? id,
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    required List<String> features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PlanImpl;

  factory Plan.fromJson(Map<String, dynamic> jsonSerialization) {
    return Plan(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      tier: _indck975.PlanTier.fromJson((jsonSerialization['tier'] as String)),
      name: jsonSerialization['name'] as String,
      currency: jsonSerialization['currency'] as String?,
      priceMonthlyMinor: jsonSerialization['priceMonthlyMinor'] as int?,
      priceAnnualMinor: jsonSerialization['priceAnnualMinor'] as int?,
      paypalProductId: jsonSerialization['paypalProductId'] as String?,
      paypalPlanIdMonthly: jsonSerialization['paypalPlanIdMonthly'] as String?,
      paypalPlanIdAnnual: jsonSerialization['paypalPlanIdAnnual'] as String?,
      features: _i0tjs2ah.Protocol().deserialize<List<String>>(
        jsonSerialization['features'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      sortOrder: jsonSerialization['sortOrder'] as int?,
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

  _indck975.PlanTier tier;

  String name;

  String currency;

  int priceMonthlyMinor;

  int priceAnnualMinor;

  String? paypalProductId;

  String? paypalPlanIdMonthly;

  String? paypalPlanIdAnnual;

  List<String> features;

  bool isActive;

  int sortOrder;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Plan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Plan copyWith({
    int? id,
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    List<String>? features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.Plan',
      if (id != null) 'id': id,
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      if (paypalProductId != null) 'paypalProductId': paypalProductId,
      if (paypalPlanIdMonthly != null)
        'paypalPlanIdMonthly': paypalPlanIdMonthly,
      if (paypalPlanIdAnnual != null) 'paypalPlanIdAnnual': paypalPlanIdAnnual,
      'features': features.toJson(),
      'isActive': isActive,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.Plan',
      if (id != null) 'id': id,
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      if (paypalProductId != null) 'paypalProductId': paypalProductId,
      if (paypalPlanIdMonthly != null)
        'paypalPlanIdMonthly': paypalPlanIdMonthly,
      if (paypalPlanIdAnnual != null) 'paypalPlanIdAnnual': paypalPlanIdAnnual,
      'features': features.toJson(),
      'isActive': isActive,
      'sortOrder': sortOrder,
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

class _PlanImpl extends Plan {
  _PlanImpl({
    int? id,
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    required List<String> features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         code: code,
         tier: tier,
         name: name,
         currency: currency,
         priceMonthlyMinor: priceMonthlyMinor,
         priceAnnualMinor: priceAnnualMinor,
         paypalProductId: paypalProductId,
         paypalPlanIdMonthly: paypalPlanIdMonthly,
         paypalPlanIdAnnual: paypalPlanIdAnnual,
         features: features,
         isActive: isActive,
         sortOrder: sortOrder,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Plan]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Plan copyWith({
    Object? id = _Undefined,
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    Object? paypalProductId = _Undefined,
    Object? paypalPlanIdMonthly = _Undefined,
    Object? paypalPlanIdAnnual = _Undefined,
    List<String>? features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Plan(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      tier: tier ?? this.tier,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      priceMonthlyMinor: priceMonthlyMinor ?? this.priceMonthlyMinor,
      priceAnnualMinor: priceAnnualMinor ?? this.priceAnnualMinor,
      paypalProductId: paypalProductId is String?
          ? paypalProductId
          : this.paypalProductId,
      paypalPlanIdMonthly: paypalPlanIdMonthly is String?
          ? paypalPlanIdMonthly
          : this.paypalPlanIdMonthly,
      paypalPlanIdAnnual: paypalPlanIdAnnual is String?
          ? paypalPlanIdAnnual
          : this.paypalPlanIdAnnual,
      features: features ?? this.features.map((e0) => e0).toList(),
      isActive: isActive ?? this.isActive,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
