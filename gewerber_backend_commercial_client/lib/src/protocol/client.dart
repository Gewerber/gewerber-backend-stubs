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
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/plan_view.dart'
    as _i24e87mh;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/subscription_view.dart'
    as _i2v29clu;
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

/// Public pricing endpoint exposing the active commercial plan catalog.
///
/// The endpoint is unauthenticated by design (pricing pages are public). It
/// returns [PlanView]s only, which deliberately omit the PayPal product and
/// plan ids as well as the internal `isActive` / `sortOrder` columns.
/// {@category Endpoint}
class EndpointPlan extends _isc.EndpointRef {
  EndpointPlan(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.plan';

  /// Returns all active plans ordered by ascending `sortOrder`.
  _ida.Future<List<_i24e87mh.PlanView>> list() =>
      caller.callServerEndpoint<List<_i24e87mh.PlanView>>(
        'gewerber_backend_commercial.plan',
        'list',
        {},
      );
}

/// Authenticated endpoint exposing the caller's own subscription state.
///
/// Only personal-scope subscriptions (`businessId` null) are surfaced here;
/// business-scoped entitlements are resolved server-side by the entitlement
/// source and are not part of this API surface yet.
/// {@category Endpoint}
class EndpointSubscription extends _isc.EndpointRef {
  EndpointSubscription(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'gewerber_backend_commercial.subscription';

  /// Returns the caller's current subscription as a [SubscriptionView], or
  /// null when the user has no subscription that still grants entitlements.
  ///
  /// Throws a [SubscriptionException] (field `auth`) when the caller is not
  /// authenticated.
  _ida.Future<_i2v29clu.SubscriptionView?> getMy() =>
      caller.callServerEndpoint<_i2v29clu.SubscriptionView?>(
        'gewerber_backend_commercial.subscription',
        'getMy',
        {},
      );
}

/// Public waitlist endpoint used to collect email addresses for the launch
/// notification and the beta program while the product is under development.
///
/// The endpoint is unauthenticated by design. It is spam-protected by a
/// honeypot field and stays privacy-preserving: joining is idempotent and the
/// response never reveals whether an address was already registered.
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
    plan = EndpointPlan(this);
    subscription = EndpointSubscription(this);
    waitlist = EndpointWaitlist(this);
  }

  late final EndpointCommercial commercial;

  late final EndpointPlan plan;

  late final EndpointSubscription subscription;

  late final EndpointWaitlist waitlist;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {
    'gewerber_backend_commercial.commercial': commercial,
    'gewerber_backend_commercial.plan': plan,
    'gewerber_backend_commercial.subscription': subscription,
    'gewerber_backend_commercial.waitlist': waitlist,
  };
}
