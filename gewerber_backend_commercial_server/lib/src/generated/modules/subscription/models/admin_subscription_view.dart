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

/// One subscription row as seen by the administration API
/// (`adminSubscription.subscriptionGetAdmin`).
///
/// Mirrors the `commercial_subscription` row with the internal `planId`
/// replaced by the human-readable `planCode` / `planName` pair and the
/// `userId` serialized as its string form.
abstract class AdminSubscriptionView
    implements _is.SerializableModel, _is.ProtocolSerialization {
  AdminSubscriptionView._({
    required this.id,
    required this.userId,
    this.businessId,
    required this.status,
    required this.billingCycle,
    required this.planCode,
    required this.planName,
    required this.currentPeriodStart,
    required this.currentPeriodEnd,
    this.trialEndsAt,
    required this.cancelAtPeriodEnd,
    this.canceledAt,
    this.paypalSubscriptionId,
    this.appliedPromoCodeId,
    required this.createdAt,
  });

  factory AdminSubscriptionView({
    required int id,
    required String userId,
    int? businessId,
    required _ixqg6znr.SubscriptionStatus status,
    required _i8537g6n.SubscriptionBillingCycle billingCycle,
    required String planCode,
    required String planName,
    required DateTime currentPeriodStart,
    required DateTime currentPeriodEnd,
    DateTime? trialEndsAt,
    required bool cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    int? appliedPromoCodeId,
    required DateTime createdAt,
  }) = _AdminSubscriptionViewImpl;

  factory AdminSubscriptionView.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return AdminSubscriptionView(
      id: jsonSerialization['id'] as int,
      userId: jsonSerialization['userId'] as String,
      businessId: jsonSerialization['businessId'] as int?,
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
      canceledAt: jsonSerialization['canceledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['canceledAt']),
      paypalSubscriptionId:
          jsonSerialization['paypalSubscriptionId'] as String?,
      appliedPromoCodeId: jsonSerialization['appliedPromoCodeId'] as int?,
      createdAt: _is.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// Database id of the subscription row.
  int id;

  /// Owner of the subscription, as a UUID string.
  String userId;

  /// Business scope, null for personal-scope subscriptions.
  int? businessId;

  /// Lifecycle status of the subscription.
  _ixqg6znr.SubscriptionStatus status;

  /// Whether the subscription bills monthly or annually.
  _i8537g6n.SubscriptionBillingCycle billingCycle;

  /// Code of the plan the subscription is on.
  String planCode;

  /// Display name of the plan the subscription is on.
  String planName;

  /// Start of the current billing period.
  DateTime currentPeriodStart;

  /// End of the current billing period.
  DateTime currentPeriodEnd;

  /// When the trial lapses, null unless the subscription is trialing.
  DateTime? trialEndsAt;

  /// Whether the subscription cancels at the end of the current period.
  bool cancelAtPeriodEnd;

  /// When the subscription was canceled, null while it is live.
  DateTime? canceledAt;

  /// PayPal subscription id at checkout, null when none was linked.
  String? paypalSubscriptionId;

  /// Id of the promo code that was applied to this subscription, null when
  /// none was.
  int? appliedPromoCodeId;

  /// When the subscription row was created.
  DateTime createdAt;

  /// Returns a shallow copy of this [AdminSubscriptionView]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  AdminSubscriptionView copyWith({
    int? id,
    String? userId,
    int? businessId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? planCode,
    String? planName,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminSubscriptionView',
      'id': id,
      'userId': userId,
      if (businessId != null) 'businessId': businessId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'planCode': planCode,
      'planName': planName,
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminSubscriptionView',
      'id': id,
      'userId': userId,
      if (businessId != null) 'businessId': businessId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'planCode': planCode,
      'planName': planName,
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AdminSubscriptionViewImpl extends AdminSubscriptionView {
  _AdminSubscriptionViewImpl({
    required int id,
    required String userId,
    int? businessId,
    required _ixqg6znr.SubscriptionStatus status,
    required _i8537g6n.SubscriptionBillingCycle billingCycle,
    required String planCode,
    required String planName,
    required DateTime currentPeriodStart,
    required DateTime currentPeriodEnd,
    DateTime? trialEndsAt,
    required bool cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    int? appliedPromoCodeId,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userId: userId,
         businessId: businessId,
         status: status,
         billingCycle: billingCycle,
         planCode: planCode,
         planName: planName,
         currentPeriodStart: currentPeriodStart,
         currentPeriodEnd: currentPeriodEnd,
         trialEndsAt: trialEndsAt,
         cancelAtPeriodEnd: cancelAtPeriodEnd,
         canceledAt: canceledAt,
         paypalSubscriptionId: paypalSubscriptionId,
         appliedPromoCodeId: appliedPromoCodeId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [AdminSubscriptionView]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  AdminSubscriptionView copyWith({
    int? id,
    String? userId,
    Object? businessId = _Undefined,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    String? planCode,
    String? planName,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    Object? trialEndsAt = _Undefined,
    bool? cancelAtPeriodEnd,
    Object? canceledAt = _Undefined,
    Object? paypalSubscriptionId = _Undefined,
    Object? appliedPromoCodeId = _Undefined,
    DateTime? createdAt,
  }) {
    return AdminSubscriptionView(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      status: status ?? this.status,
      billingCycle: billingCycle ?? this.billingCycle,
      planCode: planCode ?? this.planCode,
      planName: planName ?? this.planName,
      currentPeriodStart: currentPeriodStart ?? this.currentPeriodStart,
      currentPeriodEnd: currentPeriodEnd ?? this.currentPeriodEnd,
      trialEndsAt: trialEndsAt is DateTime? ? trialEndsAt : this.trialEndsAt,
      cancelAtPeriodEnd: cancelAtPeriodEnd ?? this.cancelAtPeriodEnd,
      canceledAt: canceledAt is DateTime? ? canceledAt : this.canceledAt,
      paypalSubscriptionId: paypalSubscriptionId is String?
          ? paypalSubscriptionId
          : this.paypalSubscriptionId,
      appliedPromoCodeId: appliedPromoCodeId is int?
          ? appliedPromoCodeId
          : this.appliedPromoCodeId,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
