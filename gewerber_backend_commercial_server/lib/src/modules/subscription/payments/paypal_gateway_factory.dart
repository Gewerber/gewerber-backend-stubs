import 'payment_gateway.dart';

/// Stub of the production [PaymentGateway] factory shipped with the
/// closed-source commercial module. Present so that OSS builds resolve; the
/// real implementation reads `PAYPAL_CLIENT_ID` / `PAYPAL_CLIENT_SECRET`
/// from the process environment and returns a configured PayPal gateway.
///
/// OSS wiring only ever calls [maybeFromEnv] behind the
/// `commercialEntitlementsEnabled()` flag, so throwing here is safe in
/// open-source deployments (the flag is off by default).
abstract final class PayPalGatewayFactory {
  /// Returns a [PaymentGateway] built from the process environment, or
  /// `null` when the configuration is incomplete.
  static PaymentGateway? maybeFromEnv() {
    throw UnimplementedError(
      'PayPalGatewayFactory.maybeFromEnv is only available in commercial '
      'builds of the gewerber_backend_commercial_server package.',
    );
  }
}
