import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';

class SubscriptionEndpoint extends Endpoint {
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
}
