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
import '../../../modules/subscription/models/subscription_billing_cycle.dart'
    as _i8537g6n;
import '../../../modules/subscription/models/subscription_status.dart'
    as _ixqg6znr;

abstract class Subscription
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  Subscription._({
    this.id,
    required this.userId,
    this.businessId,
    required this.planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    this.trialEndsAt,
    bool? cancelAtPeriodEnd,
    this.canceledAt,
    this.paypalSubscriptionId,
    this.paypalPayerId,
    this.appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : status = status ?? _ixqg6znr.SubscriptionStatus.trialing,
       billingCycle =
           billingCycle ?? _i8537g6n.SubscriptionBillingCycle.monthly,
       currentPeriodStart = currentPeriodStart ?? DateTime.now(),
       currentPeriodEnd = currentPeriodEnd ?? DateTime.now(),
       cancelAtPeriodEnd = cancelAtPeriodEnd ?? false,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory Subscription({
    int? id,
    required _isc.UuidValue userId,
    int? businessId,
    required int planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SubscriptionImpl;

  factory Subscription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Subscription(
      id: jsonSerialization['id'] as int?,
      userId: _isc.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      businessId: jsonSerialization['businessId'] as int?,
      planId: jsonSerialization['planId'] as int,
      status: jsonSerialization['status'] == null
          ? null
          : _ixqg6znr.SubscriptionStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      billingCycle: jsonSerialization['billingCycle'] == null
          ? null
          : _i8537g6n.SubscriptionBillingCycle.fromJson(
              (jsonSerialization['billingCycle'] as String),
            ),
      currentPeriodStart: jsonSerialization['currentPeriodStart'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['currentPeriodStart'],
            ),
      currentPeriodEnd: jsonSerialization['currentPeriodEnd'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['currentPeriodEnd'],
            ),
      trialEndsAt: jsonSerialization['trialEndsAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['trialEndsAt'],
            ),
      cancelAtPeriodEnd: jsonSerialization['cancelAtPeriodEnd'] == null
          ? null
          : _isc.BoolJsonExtension.fromJson(
              jsonSerialization['cancelAtPeriodEnd'],
            ),
      canceledAt: jsonSerialization['canceledAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['canceledAt'],
            ),
      paypalSubscriptionId:
          jsonSerialization['paypalSubscriptionId'] as String?,
      paypalPayerId: jsonSerialization['paypalPayerId'] as String?,
      appliedPromoCodeId: jsonSerialization['appliedPromoCodeId'] as int?,
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

  _isc.UuidValue userId;

  int? businessId;

  int planId;

  _ixqg6znr.SubscriptionStatus status;

  _i8537g6n.SubscriptionBillingCycle billingCycle;

  DateTime currentPeriodStart;

  DateTime currentPeriodEnd;

  DateTime? trialEndsAt;

  bool cancelAtPeriodEnd;

  DateTime? canceledAt;

  String? paypalSubscriptionId;

  String? paypalPayerId;

  int? appliedPromoCodeId;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  Subscription copyWith({
    int? id,
    _isc.UuidValue? userId,
    int? businessId,
    int? planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.Subscription',
      if (id != null) 'id': id,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      'planId': planId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (paypalPayerId != null) 'paypalPayerId': paypalPayerId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.Subscription',
      if (id != null) 'id': id,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      'planId': planId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (paypalPayerId != null) 'paypalPayerId': paypalPayerId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
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

class _SubscriptionImpl extends Subscription {
  _SubscriptionImpl({
    int? id,
    required _isc.UuidValue userId,
    int? businessId,
    required int planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         businessId: businessId,
         planId: planId,
         status: status,
         billingCycle: billingCycle,
         currentPeriodStart: currentPeriodStart,
         currentPeriodEnd: currentPeriodEnd,
         trialEndsAt: trialEndsAt,
         cancelAtPeriodEnd: cancelAtPeriodEnd,
         canceledAt: canceledAt,
         paypalSubscriptionId: paypalSubscriptionId,
         paypalPayerId: paypalPayerId,
         appliedPromoCodeId: appliedPromoCodeId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  Subscription copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? userId,
    Object? businessId = _Undefined,
    int? planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    Object? trialEndsAt = _Undefined,
    bool? cancelAtPeriodEnd,
    Object? canceledAt = _Undefined,
    Object? paypalSubscriptionId = _Undefined,
    Object? paypalPayerId = _Undefined,
    Object? appliedPromoCodeId = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Subscription(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      planId: planId ?? this.planId,
      status: status ?? this.status,
      billingCycle: billingCycle ?? this.billingCycle,
      currentPeriodStart: currentPeriodStart ?? this.currentPeriodStart,
      currentPeriodEnd: currentPeriodEnd ?? this.currentPeriodEnd,
      trialEndsAt: trialEndsAt is DateTime? ? trialEndsAt : this.trialEndsAt,
      cancelAtPeriodEnd: cancelAtPeriodEnd ?? this.cancelAtPeriodEnd,
      canceledAt: canceledAt is DateTime? ? canceledAt : this.canceledAt,
      paypalSubscriptionId: paypalSubscriptionId is String?
          ? paypalSubscriptionId
          : this.paypalSubscriptionId,
      paypalPayerId: paypalPayerId is String?
          ? paypalPayerId
          : this.paypalPayerId,
      appliedPromoCodeId: appliedPromoCodeId is int?
          ? appliedPromoCodeId
          : this.appliedPromoCodeId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
