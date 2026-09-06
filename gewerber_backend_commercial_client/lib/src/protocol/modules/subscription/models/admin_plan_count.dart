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

/// Number of subscriptions on one plan (part of
/// `adminSubscription.subscriptionsStats`).
abstract class AdminPlanCount
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  AdminPlanCount._({
    required this.planCode,
    required this.count,
  });

  factory AdminPlanCount({
    required String planCode,
    required int count,
  }) = _AdminPlanCountImpl;

  factory AdminPlanCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return AdminPlanCount(
      planCode: jsonSerialization['planCode'] as String,
      count: jsonSerialization['count'] as int,
    );
  }

  /// Plan code (`free`, `pro`, `business`, ...).
  String planCode;

  /// Number of subscription rows referencing the plan.
  int count;

  /// Returns a shallow copy of this [AdminPlanCount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  AdminPlanCount copyWith({
    String? planCode,
    int? count,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPlanCount',
      'planCode': planCode,
      'count': count,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminPlanCount',
      'planCode': planCode,
      'count': count,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _AdminPlanCountImpl extends AdminPlanCount {
  _AdminPlanCountImpl({
    required String planCode,
    required int count,
  }) : super._(
         planCode: planCode,
         count: count,
       );

  /// Returns a shallow copy of this [AdminPlanCount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  AdminPlanCount copyWith({
    String? planCode,
    int? count,
  }) {
    return AdminPlanCount(
      planCode: planCode ?? this.planCode,
      count: count ?? this.count,
    );
  }
}
