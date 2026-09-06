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

import 'package:gewerber_backend_commercial_server/src/generated/modules/subscription/models/admin_promo_code_create_request.dart'
    as _io7fez2u;
import 'package:gewerber_backend_commercial_server/src/generated/modules/waitlist/models/join_waitlist_request.dart'
    as _iiut8fxl;
import 'package:serverpod/serverpod.dart' as _is;
import '../endpoints/commercial_endpoint.dart' as _iel4lhgm;
import '../modules/subscription/endpoints/admin_subscription_endpoint.dart'
    as _ibfcmj7n;
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
      'adminSubscription': _ibfcmj7n.AdminSubscriptionEndpoint()
        ..initialize(
          server,
          'adminSubscription',
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
    connectors['adminSubscription'] = _is.EndpointConnector(
      name: 'adminSubscription',
      endpoint: endpoints['adminSubscription']!,
      methodConnectors: {
        'codesList': _is.MethodConnector(
          name: 'codesList',
          params: {
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'limit': _is.ParameterDescription(
              name: 'limit',
              type: _is.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .codesList(
                        session,
                        status: params['status'],
                        limit: params['limit'],
                      ),
        ),
        'codeGet': _is.MethodConnector(
          name: 'codeGet',
          params: {
            'promoCodeId': _is.ParameterDescription(
              name: 'promoCodeId',
              type: _is.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .codeGet(
                        session,
                        params['promoCodeId'],
                      ),
        ),
        'subscriptionsStats': _is.MethodConnector(
          name: 'subscriptionsStats',
          params: {},
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .subscriptionsStats(session),
        ),
        'subscriptionGetAdmin': _is.MethodConnector(
          name: 'subscriptionGetAdmin',
          params: {
            'userId': _is.ParameterDescription(
              name: 'userId',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .subscriptionGetAdmin(
                        session,
                        params['userId'],
                      ),
        ),
        'codesCreate': _is.MethodConnector(
          name: 'codesCreate',
          params: {
            'request': _is.ParameterDescription(
              name: 'request',
              type: _is.getType<_io7fez2u.AdminPromoCodeCreateRequest>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .codesCreate(
                        session,
                        params['request'],
                      ),
        ),
        'codesSetStatus': _is.MethodConnector(
          name: 'codesSetStatus',
          params: {
            'promoCodeId': _is.ParameterDescription(
              name: 'promoCodeId',
              type: _is.getType<int>(),
              nullable: false,
            ),
            'status': _is.ParameterDescription(
              name: 'status',
              type: _is.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['adminSubscription']
                          as _ibfcmj7n.AdminSubscriptionEndpoint)
                      .codesSetStatus(
                        session,
                        params['promoCodeId'],
                        params['status'],
                      ),
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
        'validatePromo': _is.MethodConnector(
          name: 'validatePromo',
          params: {
            'code': _is.ParameterDescription(
              name: 'code',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'utmSource': _is.ParameterDescription(
              name: 'utmSource',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'utmMedium': _is.ParameterDescription(
              name: 'utmMedium',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'utmCampaign': _is.ParameterDescription(
              name: 'utmCampaign',
              type: _is.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['subscription'] as _i3xdgbn1.SubscriptionEndpoint)
                      .validatePromo(
                        session,
                        params['code'],
                        utmSource: params['utmSource'],
                        utmMedium: params['utmMedium'],
                        utmCampaign: params['utmCampaign'],
                      ),
        ),
        'redeemPromo': _is.MethodConnector(
          name: 'redeemPromo',
          params: {
            'code': _is.ParameterDescription(
              name: 'code',
              type: _is.getType<String>(),
              nullable: false,
            ),
            'utmSource': _is.ParameterDescription(
              name: 'utmSource',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'utmMedium': _is.ParameterDescription(
              name: 'utmMedium',
              type: _is.getType<String?>(),
              nullable: true,
            ),
            'utmCampaign': _is.ParameterDescription(
              name: 'utmCampaign',
              type: _is.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['subscription'] as _i3xdgbn1.SubscriptionEndpoint)
                      .redeemPromo(
                        session,
                        params['code'],
                        utmSource: params['utmSource'],
                        utmMedium: params['utmMedium'],
                        utmCampaign: params['utmCampaign'],
                      ),
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
