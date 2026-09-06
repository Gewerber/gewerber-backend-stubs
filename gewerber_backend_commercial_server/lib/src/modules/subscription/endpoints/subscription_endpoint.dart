import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';

class SubscriptionEndpoint extends Endpoint {
  Future<SubscriptionView?> getMy(Session session) async {
    throw UnimplementedError();
  }
}
