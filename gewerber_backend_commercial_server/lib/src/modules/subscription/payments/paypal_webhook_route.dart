import 'dart:async';

import 'package:serverpod/serverpod.dart';

import 'payment_gateway.dart';
import 'paypal_gateway_factory.dart';

/// Stub of the thin HTTP adapter around the closed-source
/// `PayPalWebhookProcessor`, mounted on Serverpod 4's Relic-based web
/// server. Present so that OSS builds resolve; see the real commercial
/// module for the verification / processing semantics.
///
/// OSS wiring only mounts this route behind the
/// `commercialEntitlementsEnabled()` flag, so throwing here is safe in
/// open-source deployments (the flag is off by default).
class PayPalWebhookRouteHandler extends Route {
  /// Creates the webhook route.
  ///
  /// [gatewayFactory] resolves the [PaymentGateway] used for verification;
  /// it defaults to [PayPalGatewayFactory.maybeFromEnv] and is overridable
  /// so tests / staging can inject a fake — same seam as the module
  /// endpoints. The stub accepts the parameter but never uses it.
  PayPalWebhookRouteHandler({PaymentGateway? Function()? gatewayFactory})
    : super(methods: {Method.post});

  @override
  FutureOr<Result> handleCall(Session session, Request request) {
    throw UnimplementedError(
      'PayPalWebhookRouteHandler is only functional in commercial builds '
      'of the gewerber_backend_commercial_server package.',
    );
  }
}
