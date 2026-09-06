import 'package:serverpod/serverpod.dart';

import '../../../generated/protocol.dart';

class PlanEndpoint extends Endpoint {
  Future<List<PlanView>> list(Session session) async {
    throw UnimplementedError();
  }
}
