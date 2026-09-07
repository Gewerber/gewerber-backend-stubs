import 'package:serverpod/serverpod.dart';

import '../payments/payment_gateway.dart';

/// Outcome of one [reconcileStalePendingSubscriptions] run.
class PayPalReconciliationReport {
  /// Number of subscription rows queried against the provider.
  final int checked;

  /// Number of rows whose local state was healed (and persisted).
  final int healed;

  /// Per-subscription failure notes; an error never aborts the run.
  final List<String> errors;

  /// Creates a report.
  const PayPalReconciliationReport({
    required this.checked,
    required this.healed,
    this.errors = const [],
  });

  /// JSON shape for logging / admin surfacing.
  Map<String, Object?> toJson() => {
    'checked': checked,
    'healed': healed,
    'errors': errors,
  };

  @override
  String toString() =>
      'PayPalReconciliationReport(checked: $checked, healed: $healed, '
      'errors: ${errors.length})';
}

/// Stub of the webhook-loss safety net shipped with the closed-source
/// commercial module: queries the provider for subscriptions whose local
/// state looks stale and heals them. Present so that OSS builds resolve.
///
/// OSS wiring only ever runs the sweep behind the
/// `commercialEntitlementsEnabled()` flag **and** a non-null gateway (see
/// `PayPalGatewayFactory.maybeFromEnv`), so throwing here is safe in
/// open-source deployments (the flag is off by default).
Future<PayPalReconciliationReport> reconcileStalePendingSubscriptions(
  Session session,
  PaymentGateway gateway,
) async {
  throw UnimplementedError(
    'reconcileStalePendingSubscriptions is only functional in commercial '
    'builds of the gewerber_backend_commercial_server package.',
  );
}
