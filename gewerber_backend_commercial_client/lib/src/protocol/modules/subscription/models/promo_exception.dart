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

/// Raised when a promo code cannot be validated or redeemed.
///
/// The `reason` field carries a machine-readable failure code, one of:
/// `badFormat` (the submitted string is not a well-formed code),
/// `notFound` (no promo code row matches),
/// `invalid` (the code exists but is not redeemable in its current state),
/// `expired` (the validity window does not include "now"),
/// `exhausted` (the global redemption cap is reached, or a trial was
/// already used / a paid subscription is active),
/// `alreadyRedeemed` (this user has redeemed the code before),
/// `notAuthenticated` (the caller must be signed in to redeem).
abstract class PromoException
    implements
        _isc.SerializableException,
        _isc.SerializableModel,
        _isc.ProtocolSerialization {
  PromoException._({
    required this.message,
    this.field,
    this.reason,
  });

  factory PromoException({
    required String message,
    String? field,
    String? reason,
  }) = _PromoExceptionImpl;

  factory PromoException.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoException(
      message: jsonSerialization['message'] as String,
      field: jsonSerialization['field'] as String?,
      reason: jsonSerialization['reason'] as String?,
    );
  }

  String message;

  String? field;

  /// Machine-readable failure reason: badFormat / notFound / invalid /
  /// expired / exhausted / alreadyRedeemed / notAuthenticated.
  String? reason;

  /// Returns a shallow copy of this [PromoException]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PromoException copyWith({
    String? message,
    String? field,
    String? reason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  String toString() {
    return 'PromoException(message: $message, field: $field, reason: $reason)';
  }
}

class _Undefined {}

class _PromoExceptionImpl extends PromoException {
  _PromoExceptionImpl({
    required String message,
    String? field,
    String? reason,
  }) : super._(
         message: message,
         field: field,
         reason: reason,
       );

  /// Returns a shallow copy of this [PromoException]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PromoException copyWith({
    String? message,
    Object? field = _Undefined,
    Object? reason = _Undefined,
  }) {
    return PromoException(
      message: message ?? this.message,
      field: field is String? ? field : this.field,
      reason: reason is String? ? reason : this.reason,
    );
  }
}
