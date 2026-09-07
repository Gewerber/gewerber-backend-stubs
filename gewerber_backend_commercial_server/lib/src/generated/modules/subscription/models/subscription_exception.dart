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

/// Raised by the user-facing `subscription` endpoint when the caller's own
/// subscription state cannot be read or changed.
///
/// The `reason` field carries a machine-readable failure code, one of:
/// `notAuthenticated` (the caller must be signed in),
/// `planNotFound` (unknown / inactive / free plan code, or a promo code that
/// cannot be applied to the checkout),
/// `planNotProvisioned` (the plan or promo variant has no PayPal plan id
/// yet — an admin must run the plan sync first),
/// `checkoutFailed` (the checkout request itself is malformed, e.g. a
/// non-HTTPS return / cancel URL),
/// `notFound` (the caller has no subscription to act on),
/// `alreadyCanceled` (the subscription is already scheduled to cancel),
/// `alreadySubscribed` (an active or trialing subscription already exists),
/// `switchFailed` (the provider rejected a billing-cycle switch),
/// `providerError` (the payment provider is unavailable or rejected the
/// call).
abstract class SubscriptionException
    implements
        _is.SerializableException,
        _is.SerializableModel,
        _is.ProtocolSerialization {
  SubscriptionException._({
    required this.message,
    this.field,
    this.reason,
  });

  factory SubscriptionException({
    required String message,
    String? field,
    String? reason,
  }) = _SubscriptionExceptionImpl;

  factory SubscriptionException.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return SubscriptionException(
      message: jsonSerialization['message'] as String,
      field: jsonSerialization['field'] as String?,
      reason: jsonSerialization['reason'] as String?,
    );
  }

  String message;

  String? field;

  /// Machine-readable failure reason: notAuthenticated / planNotFound /
  /// planNotProvisioned / checkoutFailed / notFound / alreadyCanceled /
  /// alreadySubscribed / switchFailed / providerError.
  String? reason;

  /// Returns a shallow copy of this [SubscriptionException]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SubscriptionException copyWith({
    String? message,
    String? field,
    String? reason,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionException',
      'message': message,
      if (field != null) 'field': field,
      if (reason != null) 'reason': reason,
    };
  }

  @override
  String toString() {
    return 'SubscriptionException(message: $message, field: $field, reason: $reason)';
  }
}

class _Undefined {}

class _SubscriptionExceptionImpl extends SubscriptionException {
  _SubscriptionExceptionImpl({
    required String message,
    String? field,
    String? reason,
  }) : super._(
         message: message,
         field: field,
         reason: reason,
       );

  /// Returns a shallow copy of this [SubscriptionException]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SubscriptionException copyWith({
    String? message,
    Object? field = _Undefined,
    Object? reason = _Undefined,
  }) {
    return SubscriptionException(
      message: message ?? this.message,
      field: field is String? ? field : this.field,
      reason: reason is String? ? reason : this.reason,
    );
  }
}
