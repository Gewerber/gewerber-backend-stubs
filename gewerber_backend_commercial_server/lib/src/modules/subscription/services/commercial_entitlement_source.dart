import 'package:serverpod/serverpod.dart';

/// Resolves the entitlement feature keys granted to a user, optionally scoped
/// to one of their businesses.
///
/// The open-source core mirrors this signature in its adapter so that the
/// commercial deployment can swap in a database-backed implementation without
/// the core knowing anything about plans or subscriptions.
abstract interface class CommercialEntitlementSource {
  /// Returns the entitlement feature keys granted to the user (optionally
  /// scoped to a business). Never returns an empty contract-breaking null;
  /// unknown users get the free plan's features.
  Future<Set<String>> featuresFor({required UuidValue userId, int? businessId});
}

/// Stub of the database-backed [CommercialEntitlementSource] shipped with the
/// closed-source commercial module. Present so that OSS builds resolve; never
/// functional outside a commercial deployment.
class DbCommercialEntitlementSource implements CommercialEntitlementSource {
  /// How long a resolved feature set stays valid in the local cache.
  static const cacheLifetime = Duration(seconds: 60);

  /// The plan code that users without an active subscription fall back to.
  static const freePlanCode = 'free';

  /// Features granted when the database has not been seeded with a `free`
  /// plan row at all.
  static const fallbackFeatures = <String>{
    'invoicing',
    'time_tracking',
    'basic_accounting',
    'guidance',
  };

  /// Builds the cache key for the (user, business) scope pair.
  static String cacheKey(UuidValue userId, int? businessId) {
    throw UnimplementedError();
  }

  /// The session used for database access and cache lookups.
  final Session session;

  /// Creates a database-backed entitlement source on [session].
  const DbCommercialEntitlementSource(this.session);

  @override
  Future<Set<String>> featuresFor({
    required UuidValue userId,
    int? businessId,
  }) async {
    throw UnimplementedError();
  }
}
