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

/// Number of promo-code redemptions attributed to one campaign label (part
/// of `adminSubscription.subscriptionsStats`). The `null` campaign groups
/// all redemptions of codes without a campaign label.
abstract class AdminCampaignCount
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  AdminCampaignCount._({
    this.campaign,
    required this.count,
  });

  factory AdminCampaignCount({
    String? campaign,
    required int count,
  }) = _AdminCampaignCountImpl;

  factory AdminCampaignCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return AdminCampaignCount(
      campaign: jsonSerialization['campaign'] as String?,
      count: jsonSerialization['count'] as int,
    );
  }

  /// Campaign label of the redeemed code, null when the code has none.
  String? campaign;

  /// Number of redemptions of codes carrying that label.
  int count;

  /// Returns a shallow copy of this [AdminCampaignCount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  AdminCampaignCount copyWith({
    String? campaign,
    int? count,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminCampaignCount',
      if (campaign != null) 'campaign': campaign,
      'count': count,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.AdminCampaignCount',
      if (campaign != null) 'campaign': campaign,
      'count': count,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AdminCampaignCountImpl extends AdminCampaignCount {
  _AdminCampaignCountImpl({
    String? campaign,
    required int count,
  }) : super._(
         campaign: campaign,
         count: count,
       );

  /// Returns a shallow copy of this [AdminCampaignCount]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  AdminCampaignCount copyWith({
    Object? campaign = _Undefined,
    int? count,
  }) {
    return AdminCampaignCount(
      campaign: campaign is String? ? campaign : this.campaign,
      count: count ?? this.count,
    );
  }
}
