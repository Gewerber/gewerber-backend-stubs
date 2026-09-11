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

import 'dart:async' as _ida;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/waitlist/models/join_waitlist_request.dart'
    as _i5a3xmr1;
import 'package:serverpod_client/serverpod_client.dart' as _isc;

/// {@category Endpoint}
class EndpointCommercial extends _isc.EndpointRef {
  EndpointCommercial(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.commercial';

  _ida.Future<String> status() => caller.callServerEndpoint<String>(
    'gewerber_backend_commercial.commercial',
    'status',
    {},
  );
}

/// {@category Endpoint}
class EndpointWaitlist extends _isc.EndpointRef {
  EndpointWaitlist(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.waitlist';

  _ida.Future<void> join(_i5a3xmr1.JoinWaitlistRequest request) =>
      caller.callServerEndpoint<void>(
        'gewerber_backend_commercial.waitlist',
        'join',
        {'request': request},
      );
}

class Caller extends _isc.ModuleEndpointCaller {
  Caller(_isc.ServerpodClientShared client) : super(client) {
    commercial = EndpointCommercial(this);
    waitlist = EndpointWaitlist(this);
  }

  late final EndpointCommercial commercial;

  late final EndpointWaitlist waitlist;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {
    'gewerber_backend_commercial.commercial': commercial,
    'gewerber_backend_commercial.waitlist': waitlist,
  };
}
