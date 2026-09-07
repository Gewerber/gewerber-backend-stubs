import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';
import '../payments/payment_gateway.dart';
import '../payments/paypal_gateway_factory.dart';

/// Signature of the function that persists a scheduled
/// [CancelSubscriptionFutureCall.cancel] execution.
typedef CancelSubscriptionScheduler =
    Future<void> Function(
      Session session,
      Subscription subscription,
      DateTime atTime,
    );

/// Stub of the deferred cancellation of a PayPal-backed subscription
/// shipped with the closed-source commercial module. The generated
/// `future_calls.dart` wrapper invokes [cancel]; the real implementation
/// cancels at the provider, flips the row to `canceled`, invalidates the
/// entitlement cache and writes an audit row.
class CancelSubscriptionFutureCall extends FutureCall<Subscription> {
  /// Gateway factory used at execution time. Overridable so tests can
  /// inject a fake (or `() => null` to simulate an unconfigured provider)
  /// without touching the process environment.
  static PaymentGateway? Function() gatewayFactory =
      PayPalGatewayFactory.maybeFromEnv;

  /// Executes the cancellation for [subscription] (the row as it was at
  /// scheduling time — the authoritative state is re-read by id).
  Future<void> cancel(Session session, Subscription subscription) async {
    throw UnimplementedError(
      'CancelSubscriptionFutureCall.cancel is only functional in commercial '
      'builds of the gewerber_backend_commercial_server package.',
    );
  }
}

/// Scheduling seam for [CancelSubscriptionFutureCall.cancel].
///
/// Stub of the helper shipped with the closed-source commercial module;
/// present so the public surface of `cancel_subscription_future_call.dart`
/// resolves in OSS builds.
abstract final class CancelSubscriptionScheduling {
  /// The name the generated invokable wrapper is registered under by
  /// `serverpod generate` (derived from `CancelSubscriptionFutureCall` +
  /// its `cancel` method).
  static const String callName = 'CancelSubscriptionCancelFutureCall';

  /// The unique identifier a cancellation is scheduled under for one
  /// subscription — at most one pending cancellation per row.
  static String identifierFor(int subscriptionId) {
    throw UnimplementedError(
      'CancelSubscriptionScheduling.identifierFor is only functional in '
      'commercial builds of the gewerber_backend_commercial_server package.',
    );
  }

  /// Scheduling seam (see the class doc comment). Tests record calls by
  /// replacing this (restore via [defaultScheduler] in tearDown); the host
  /// bootstrap wires it to a real dispatcher.
  static CancelSubscriptionScheduler scheduler = defaultScheduler;

  /// The out-of-the-box [scheduler] (the module's generated dispatcher).
  static final CancelSubscriptionScheduler defaultScheduler =
      _generatedScheduler;

  /// Schedules [CancelSubscriptionFutureCall.cancel] for [subscription] at
  /// [atTime] (UTC-normalized).
  static Future<void> schedule(
    Session session, {
    required Subscription subscription,
    required DateTime atTime,
  }) async {
    throw UnimplementedError(
      'CancelSubscriptionScheduling.schedule is only functional in '
      'commercial builds of the gewerber_backend_commercial_server package.',
    );
  }

  static Future<void> _generatedScheduler(
    Session session,
    Subscription subscription,
    DateTime atTime,
  ) async {
    throw UnimplementedError(
      'CancelSubscriptionScheduling.schedule is only functional in '
      'commercial builds of the gewerber_backend_commercial_server package.',
    );
  }
}
