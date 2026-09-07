import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';
import '../payments/payment_gateway.dart';

class AdminSubscriptionEndpoint extends Endpoint {
  /// Creates the endpoint.
  ///
  /// [gatewayFactory] resolves the [PaymentGateway] used by the PayPal
  /// provisioning methods in commercial builds; the stub accepts and
  /// ignores it.
  AdminSubscriptionEndpoint({PaymentGateway? Function()? gatewayFactory});

  Future<List<AdminPromoCodeView>> codesList(
    Session session, {
    String? status,
    int? limit,
  }) async {
    throw UnimplementedError();
  }

  Future<AdminPromoCodeDetail> codeGet(Session session, int promoCodeId) async {
    throw UnimplementedError();
  }

  Future<AdminSubscriptionStats> subscriptionsStats(Session session) async {
    throw UnimplementedError();
  }

  Future<List<AdminSubscriptionView>> subscriptionGetAdmin(
    Session session,
    String userId,
  ) async {
    throw UnimplementedError();
  }

  Future<String> plansSync(Session session) async {
    throw UnimplementedError();
  }

  Future<String> discountVariantSync(Session session, int promoCodeId) async {
    throw UnimplementedError();
  }

  Future<String> plansStatus(Session session) async {
    throw UnimplementedError();
  }

  Future<AdminPromoCodeView> codesCreate(
    Session session,
    AdminPromoCodeCreateRequest request,
  ) async {
    throw UnimplementedError();
  }

  Future<AdminPromoCodeView> codesSetStatus(
    Session session,
    int promoCodeId,
    String status,
  ) async {
    throw UnimplementedError();
  }
}
