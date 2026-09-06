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
import '../../../modules/subscription/models/subscription_billing_cycle.dart'
    as _i8537g6n;
import '../../../modules/subscription/models/subscription_status.dart'
    as _ixqg6znr;

abstract class SubscriptionView
    implements _is.SerializableModel, _is.ProtocolSerialization {
  SubscriptionView._({
    required this.status,
    required this.billingCycle,
    required this.planCode,
    required this.planName,
    required this.currentPeriodStart,
    required this.currentPeriodEnd,
    this.trialEndsAt,
    required this.cancelAtPeriodEnd,
  });

  factory SubscriptionView({
    required _ixqg6znr.SubscriptionStatus status,
    required _i8537g6n.SubscriptionBillingCycle billingCycle,
    required String planCode,
    required String planName,
    required DateTime currentPeriodStart,
    required DateTime currentPeriodEnd,
    DateTime? trialEndsAt,
    required bool cancelAtPeriodEnd,
  }) = _SubscriptionViewImpl;

  factory SubscriptionView.fromJson(Map<String, dynamic> jsonSerialization) {
    return SubscriptionView(
      status: _ixqg6znr.SubscriptionStatus.fromJson(
        (jsonSerialization['status'] as String),
      ),
      billingCycle: _i8537g6n.SubscriptionBillingCycle.fromJson(
        (jsonSerialization['billingCycle'] as String),
      ),
      planCode: jsonSerialization['planCode'] as String,
      planName: jsonSerialization['planName'] as String,
      currentPeriodStart: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['currentPeriodStart'],
      ),
      currentPeriodEnd: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['currentPeriodEnd'],
      ),
      trialEndsAt: jsonSerialization['trialEndsAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['trialEndsAt'],
            ),
      cancelAtPeriodEnd: _is.BoolJsonExtension.fromJson(
        jsonSerialization['cancelAtPeriodEnd'],
      ),
    );
  }

  _ixqg6znr.SubscriptionStatus status;

  _i8537g6n.SubscriptionBillingCycle billingCycle;

  String planCode;

  String planName;

  DateTime currentPeriodStart;

  DateTime currentPeriodEnd;

  DateTime? trialEndsAt;

  bool cancelAtPeriodEnd;

  /// Returns a shallow copy of this [SubscriptionView]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SubscriptionView copyWith({
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? planCode,
    String? planName,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionView',
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'planCode': planCode,
      'planName': planName,
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionView',
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'planCode': planCode,
      'planName': planName,
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SubscriptionViewImpl extends SubscriptionView {
  _SubscriptionViewImpl({
    required _ixqg6znr.SubscriptionStatus status,
    required _i8537g6n.SubscriptionBillingCycle billingCycle,
    required String planCode,
    required String planName,
    required DateTime currentPeriodStart,
    required DateTime currentPeriodEnd,
    DateTime? trialEndsAt,
    required bool cancelAtPeriodEnd,
  }) : super._(
         status: status,
         billingCycle: billingCycle,
         planCode: planCode,
         planName: planName,
         currentPeriodStart: currentPeriodStart,
         currentPeriodEnd: currentPeriodEnd,
         trialEndsAt: trialEndsAt,
         cancelAtPeriodEnd: cancelAtPeriodEnd,
       );

  /// Returns a shallow copy of this [SubscriptionView]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SubscriptionView copyWith({
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? planCode,
    String? planName,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    Object? trialEndsAt = _Undefined,
    bool? cancelAtPeriodEnd,
  }) {
    return SubscriptionView(
      status: status ?? this.status,
      billingCycle: billingCycle ?? this.billingCycle,
      planCode: planCode ?? this.planCode,
      planName: planName ?? this.planName,
      currentPeriodStart: currentPeriodStart ?? this.currentPeriodStart,
      currentPeriodEnd: currentPeriodEnd ?? this.currentPeriodEnd,
      trialEndsAt: trialEndsAt is DateTime? ? trialEndsAt : this.trialEndsAt,
      cancelAtPeriodEnd: cancelAtPeriodEnd ?? this.cancelAtPeriodEnd,
    );
  }
}
