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

/// Result of `subscription.createCheckout`: redirect the buyer to
/// [approvalUrl] to approve the PayPal subscription.
///
/// Nothing is persisted yet: the `Subscription` row is created / updated by
/// the PayPal webhook reconciliation once the buyer approves, so this view
/// is informational only.
abstract class CheckoutView
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CheckoutView._({
    required this.approvalUrl,
    required this.paypalSubscriptionId,
  });

  factory CheckoutView({
    required String approvalUrl,
    required String paypalSubscriptionId,
  }) = _CheckoutViewImpl;

  factory CheckoutView.fromJson(Map<String, dynamic> jsonSerialization) {
    return CheckoutView(
      approvalUrl: jsonSerialization['approvalUrl'] as String,
      paypalSubscriptionId: jsonSerialization['paypalSubscriptionId'] as String,
    );
  }

  /// PayPal payer-action URL to redirect the buyer to.
  String approvalUrl;

  /// The PayPal subscription id (I-...) the approval belongs to, for
  /// reference only (the webhook is the source of truth).
  String paypalSubscriptionId;

  /// Returns a shallow copy of this [CheckoutView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CheckoutView copyWith({
    String? approvalUrl,
    String? paypalSubscriptionId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.CheckoutView',
      'approvalUrl': approvalUrl,
      'paypalSubscriptionId': paypalSubscriptionId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.CheckoutView',
      'approvalUrl': approvalUrl,
      'paypalSubscriptionId': paypalSubscriptionId,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _CheckoutViewImpl extends CheckoutView {
  _CheckoutViewImpl({
    required String approvalUrl,
    required String paypalSubscriptionId,
  }) : super._(
         approvalUrl: approvalUrl,
         paypalSubscriptionId: paypalSubscriptionId,
       );

  /// Returns a shallow copy of this [CheckoutView]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CheckoutView copyWith({
    String? approvalUrl,
    String? paypalSubscriptionId,
  }) {
    return CheckoutView(
      approvalUrl: approvalUrl ?? this.approvalUrl,
      paypalSubscriptionId: paypalSubscriptionId ?? this.paypalSubscriptionId,
    );
  }
}
