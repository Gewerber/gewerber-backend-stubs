import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';
import '../payments/payment_gateway.dart';

class SubscriptionEndpoint extends Endpoint {
  /// Creates the endpoint.
  ///
  /// [gatewayFactory] resolves the [PaymentGateway] used by the checkout
  /// and cycle-switch methods in commercial builds; the stub accepts and
  /// ignores it.
  SubscriptionEndpoint({PaymentGateway? Function()? gatewayFactory});

  Future<SubscriptionView?> getMy(Session session) async {
    throw UnimplementedError();
  }

  Future<PromoPreview> validatePromo(
    Session session,
    String code, {
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
  }) async {
    throw UnimplementedError();
  }

  Future<PromoRedemptionView> redeemPromo(
    Session session,
    String code, {
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
  }) async {
    throw UnimplementedError();
  }

  Future<CheckoutView> createCheckout(
    Session session,
    CheckoutRequest request,
  ) async {
    throw UnimplementedError();
  }

  Future<SubscriptionView> cancelMySubscription(
    Session session, {
    String? reason,
  }) async {
    throw UnimplementedError();
  }

  Future<SubscriptionView> switchBillingCycle(
    Session session,
    SubscriptionBillingCycle newCycle,
  ) async {
    throw UnimplementedError();
  }
}
