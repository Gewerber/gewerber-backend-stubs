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

import 'package:gewerber_backend_commercial_server/src/generated/modules/waitlist/models/join_waitlist_request.dart'
    as _iiut8fxl;
import 'package:serverpod/serverpod.dart' as _is;
import '../endpoints/commercial_endpoint.dart' as _iel4lhgm;
import '../modules/subscription/endpoints/plan_endpoint.dart' as _iik5xz03;
import '../modules/subscription/endpoints/subscription_endpoint.dart'
    as _i3xdgbn1;
import '../modules/waitlist/endpoints/waitlist_endpoint.dart' as _im6fuw82;

class Endpoints extends _is.EndpointDispatch {
  @override
  void initializeEndpoints(_is.Server server) {
    var endpoints = <String, _is.Endpoint>{
      'commercial': _iel4lhgm.CommercialEndpoint()
        ..initialize(
          server,
          'commercial',
          'gewerber_backend_commercial',
        ),
      'plan': _iik5xz03.PlanEndpoint()
        ..initialize(
          server,
          'plan',
          'gewerber_backend_commercial',
        ),
      'subscription': _i3xdgbn1.SubscriptionEndpoint()
        ..initialize(
          server,
          'subscription',
          'gewerber_backend_commercial',
        ),
      'waitlist': _im6fuw82.WaitlistEndpoint()
        ..initialize(
          server,
          'waitlist',
          'gewerber_backend_commercial',
        ),
    };
    connectors['commercial'] = _is.EndpointConnector(
      name: 'commercial',
      endpoint: endpoints['commercial']!,
      methodConnectors: {
        'status': _is.MethodConnector(
          name: 'status',
          params: {},
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['commercial'] as _iel4lhgm.CommercialEndpoint)
                      .status(session),
        ),
      },
    );
    connectors['plan'] = _is.EndpointConnector(
      name: 'plan',
      endpoint: endpoints['plan']!,
      methodConnectors: {
        'list': _is.MethodConnector(
          name: 'list',
          params: {},
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['plan'] as _iik5xz03.PlanEndpoint).list(session),
        ),
      },
    );
    connectors['subscription'] = _is.EndpointConnector(
      name: 'subscription',
      endpoint: endpoints['subscription']!,
      methodConnectors: {
        'getMy': _is.MethodConnector(
          name: 'getMy',
          params: {},
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['subscription'] as _i3xdgbn1.SubscriptionEndpoint)
                      .getMy(session),
        ),
      },
    );
    connectors['waitlist'] = _is.EndpointConnector(
      name: 'waitlist',
      endpoint: endpoints['waitlist']!,
      methodConnectors: {
        'join': _is.MethodConnector(
          name: 'join',
          params: {
            'request': _is.ParameterDescription(
              name: 'request',
              type: _is.getType<_iiut8fxl.JoinWaitlistRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['waitlist'] as _im6fuw82.WaitlistEndpoint).join(
                    session,
                    params['request'],
                  ),
        ),
      },
    );
  }
}
