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

/// Raised by the `adminSubscription` endpoint when an administration call
/// is rejected or an admin mutation cannot be applied.
///
/// The `reason` field carries a machine-readable failure code, one of:
/// `notAuthenticated` (the caller must be signed in),
/// `noRole` (the caller has no entry in the `admin_user` allowlist),
/// `insufficientRole` (the caller's role does not satisfy the call),
/// `notFound` (the referenced row does not exist),
/// `duplicate` (the code is already taken),
/// `invalidStatus` / `unknownPlan` / `invalidField` (request validation).
abstract class SubscriptionAdminException
    implements
        _is.SerializableException,
        _is.SerializableModel,
        _is.ProtocolSerialization {
  SubscriptionAdminException._({
    required this.message,
    this.field,
    this.reason,
  });

  factory SubscriptionAdminException({
    required String message,
    String? field,
    String? reason,
  }) = _SubscriptionAdminExceptionImpl;

  factory SubscriptionAdminException.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SubscriptionAdminException(
      message: jsonSerialization['message'] as String,
      field: jsonSerialization['field'] as String?,
      reason: jsonSerialization['reason'] as String?,
    );
  }

  String message;

  /// The request field the failure is about (`auth`, `role`, `code`,
  /// `status`, `planCode`, `trialDays`, `discountType`, `discountPercent`,
  /// `discountMinor`, `maxRedemptions`, `validUntil`, `promoCodeId`, ...).
  String? field;

  /// Machine-readable failure reason: notAuthenticated / noRole /
  /// insufficientRole / notFound / duplicate / invalidStatus / unknownPlan /
  /// invalidField.
  String? reason;

  /// Returns a shallow copy of this [SubscriptionAdminException]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SubscriptionAdminException copyWith({
    String? message,
    String? field,
    String? reason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionAdminException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionAdminException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  String toString() {
    return 'SubscriptionAdminException(message: $message, field: $field, reason: $reason)';
  }
}

class _Undefined {}

class _SubscriptionAdminExceptionImpl extends SubscriptionAdminException {
  _SubscriptionAdminExceptionImpl({
    required String message,
    String? field,
    String? reason,
  }) : super._(
         message: message,
         field: field,
         reason: reason,
       );

  /// Returns a shallow copy of this [SubscriptionAdminException]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SubscriptionAdminException copyWith({
    String? message,
    Object? field = _Undefined,
    Object? reason = _Undefined,
  }) {
    return SubscriptionAdminException(
      message: message ?? this.message,
      field: field is String? ? field : this.field,
      reason: reason is String? ? reason : this.reason,
    );
  }
}
