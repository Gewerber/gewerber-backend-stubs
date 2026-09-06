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

enum SubscriptionStatus implements _isc.SerializableModel {
  trialing,
  active,
  past_due,
  canceled,
  expired;

  static SubscriptionStatus fromJson(String name) {
    switch (name) {
      case 'trialing':
        return SubscriptionStatus.trialing;
      case 'active':
        return SubscriptionStatus.active;
      case 'past_due':
        return SubscriptionStatus.past_due;
      case 'canceled':
        return SubscriptionStatus.canceled;
      case 'expired':
        return SubscriptionStatus.expired;
      default:
        throw ArgumentError(
          'Value "$name" cannot be converted to "SubscriptionStatus"',
        );
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
