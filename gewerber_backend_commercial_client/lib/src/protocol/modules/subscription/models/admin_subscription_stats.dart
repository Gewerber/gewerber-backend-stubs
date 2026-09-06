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
import '../../../modules/subscription/models/admin_campaign_count.dart'
    as _icd092qe;
import '../../../modules/subscription/models/admin_plan_count.dart'
    as _i7cuedv0;

/// Portfolio-wide subscription and promo metrics for the administration API
/// (`adminSubscription.subscriptionsStats`).
abstract class AdminSubscriptionStats
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  AdminSubscriptionStats._({
    required this.trialingCount,
    required this.activeCount,
    required this.pastDueCount,
    required this.canceledCount,
    required this.expiredCount,
    required this.activeSubscriptions,
    required this.mrrEstimateMinor,
    required this.redemptionsTotal,
    required this.planCounts,
    required this.campaignCounts,
  });

  factory AdminSubscriptionStats({
    required int trialingCount,
    required int activeCount,
    required int pastDueCount,
    required int canceledCount,
    required int expiredCount,
    required int activeSubscriptions,
    required int mrrEstimateMinor,
    required int redemptionsTotal,
    required List<_i7cuedv0.AdminPlanCount> planCounts,
    required List<_icd092qe.AdminCampaignCount> campaignCounts,
  }) = _AdminSubscriptionStatsImpl;

  factory AdminSubscriptionStats.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return AdminSubscriptionStats(
      trialingCount: jsonSerialization['trialingCount'] as int,
      activeCount: jsonSerialization['activeCount'] as int,
      pastDueCount: jsonSerialization['pastDueCount'] as int,
      canceledCount: jsonSerialization['canceledCount'] as int,
      expiredCount: jsonSerialization['expiredCount'] as int,
      activeSubscriptions: jsonSerialization['activeSubscriptions'] as int,
      mrrEstimateMinor: jsonSerialization['mrrEstimateMinor'] as int,
      redemptionsTotal: jsonSerialization['redemptionsTotal'] as int,
      planCounts: _i0tjs2ah.Protocol()
          .deserialize<List<_i7cuedv0.AdminPlanCount>>(
            jsonSerialization['planCounts'],
          ),
      campaignCounts: _i0tjs2ah.Protocol()
          .deserialize<List<_icd092qe.AdminCampaignCount>>(
            jsonSerialization['campaignCounts'],
          ),
    );
  }

  /// Subscriptions currently in their trial period.
  int trialingCount;

  /// Subscriptions in good standing.
  int activeCount;

  /// Subscriptions whose last payment attempt failed.
  int pastDueCount;

  /// Subscriptions canceled by the customer.
  int canceledCount;

  /// Subscriptions whose paid period has lapsed.
  int expiredCount;

  /// Live subscriptions: `trialing` + `active` + `past_due` (i.e. anything
  /// not `canceled` or `expired`).
  int activeSubscriptions;

  /// Monthly recurring revenue estimate in EUR minor units: sum of
  /// `priceMonthlyMinor` over `active` and `past_due` subscriptions;
  /// trials contribute 0.
  int mrrEstimateMinor;

  /// Total number of promo-code redemptions ever recorded.
  int redemptionsTotal;

  /// Subscription rows grouped by plan, largest group first.
  List<_i7cuedv0.AdminPlanCount> planCounts;

  /// Promo redemptions grouped by the campaign label of the redeemed code,
  /// largest group first.
  List<_icd092qe.AdminCampaignCount> campaignCounts;

  /// Returns a shallow copy of this [AdminSubscriptionStats]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  AdminSubscriptionStats copyWith({
    int? trialingCount,
    int? activeCount,
    int? pastDueCount,
    int? canceledCount,
    int? expiredCount,
    int? activeSubscriptions,
    int? mrrEstimateMinor,
    int? redemptionsTotal,
    List<_i7cuedv0.AdminPlanCount>? planCounts,
    List<_icd092qe.AdminCampaignCount>? campaignCounts,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminSubscriptionStats',
      'trialingCount': trialingCount,
      'activeCount': activeCount,
      'pastDueCount': pastDueCount,
      'canceledCount': canceledCount,
      'expiredCount': expiredCount,
      'activeSubscriptions': activeSubscriptions,
      'mrrEstimateMinor': mrrEstimateMinor,
      'redemptionsTotal': redemptionsTotal,
      'planCounts': planCounts.toJson(valueToJson: (v) => v.toJson()),
      'campaignCounts': campaignCounts.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminSubscriptionStats',
      'trialingCount': trialingCount,
      'activeCount': activeCount,
      'pastDueCount': pastDueCount,
      'canceledCount': canceledCount,
      'expiredCount': expiredCount,
      'activeSubscriptions': activeSubscriptions,
      'mrrEstimateMinor': mrrEstimateMinor,
      'redemptionsTotal': redemptionsTotal,
      'planCounts': planCounts.toJson(
        valueToJson: (v) => v.toJsonForProtocol(),
      ),
      'campaignCounts': campaignCounts.toJson(
        valueToJson: (v) => v.toJsonForProtocol(),
      ),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _AdminSubscriptionStatsImpl extends AdminSubscriptionStats {
  _AdminSubscriptionStatsImpl({
    required int trialingCount,
    required int activeCount,
    required int pastDueCount,
    required int canceledCount,
    required int expiredCount,
    required int activeSubscriptions,
    required int mrrEstimateMinor,
    required int redemptionsTotal,
    required List<_i7cuedv0.AdminPlanCount> planCounts,
    required List<_icd092qe.AdminCampaignCount> campaignCounts,
  }) : super._(
         trialingCount: trialingCount,
         activeCount: activeCount,
         pastDueCount: pastDueCount,
         canceledCount: canceledCount,
         expiredCount: expiredCount,
         activeSubscriptions: activeSubscriptions,
         mrrEstimateMinor: mrrEstimateMinor,
         redemptionsTotal: redemptionsTotal,
         planCounts: planCounts,
         campaignCounts: campaignCounts,
       );

  /// Returns a shallow copy of this [AdminSubscriptionStats]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  AdminSubscriptionStats copyWith({
    int? trialingCount,
    int? activeCount,
    int? pastDueCount,
    int? canceledCount,
    int? expiredCount,
    int? activeSubscriptions,
    int? mrrEstimateMinor,
    int? redemptionsTotal,
    List<_i7cuedv0.AdminPlanCount>? planCounts,
    List<_icd092qe.AdminCampaignCount>? campaignCounts,
  }) {
    return AdminSubscriptionStats(
      trialingCount: trialingCount ?? this.trialingCount,
      activeCount: activeCount ?? this.activeCount,
      pastDueCount: pastDueCount ?? this.pastDueCount,
      canceledCount: canceledCount ?? this.canceledCount,
      expiredCount: expiredCount ?? this.expiredCount,
      activeSubscriptions: activeSubscriptions ?? this.activeSubscriptions,
      mrrEstimateMinor: mrrEstimateMinor ?? this.mrrEstimateMinor,
      redemptionsTotal: redemptionsTotal ?? this.redemptionsTotal,
      planCounts:
          planCounts ?? this.planCounts.map((e0) => e0.copyWith()).toList(),
      campaignCounts:
          campaignCounts ??
          this.campaignCounts.map((e0) => e0.copyWith()).toList(),
    );
  }
}
