import 'package:serverpod/serverpod.dart';

/// OSS stub of the commercial entitlement provider.
///
/// Mirrors the public shape of the closed module's provider of the same name
/// (`gewerber-backend-commercial`, `lib/src/billing/`): identical symbol and
/// call signatures, so the OSS host compiles and boots against this stub
/// package when the private module is absent. Interface-level parity only —
/// per the module contract (§5) the internals are free, so this stub carries
/// no backing store of its own.
///
/// ### Fixed fail-open behavior
///
/// The real provider resolves granted feature keys from commercial data and
/// falls back to "grant everything" when its data source is unavailable.
/// This stub has no data source at all, so it returns that same **fail-open
/// grant-all result unconditionally**: [ossFeatureNames] returns `null` —
/// the contractual signal meaning "grant every OSS feature" (only the host
/// knows its full feature set) — and [hasCapability] returns `true`. This is
/// the fixed OSS-baseline behavior of the stub, not an error path: a
/// self-hosted OSS deployment grants every feature anyway, so the stub keeps
/// those semantics exact for open-source builds.
///
/// The real class accepts an optional `sourceFactory` constructor parameter
/// for its internal data access; it is deliberately **not** mirrored here —
/// the parameter type is module-internal and outside the public contract.
final class CommercialEntitlementProvider {
  /// Creates the stub provider (default-constructible, like the real one).
  CommercialEntitlementProvider();

  /// Explicit mapping from commercial feature keys to the OSS feature-name
  /// strings (the `name` of each host `Feature` enum value, serialized
  /// `byName`; `basic_accounting` is the only key whose OSS name differs).
  /// Copied verbatim from the real module so host-side mapping behavior
  /// matches with and without the private package.
  static const Map<String, String> featureByKey = {
    'invoicing': 'invoicing',
    'time_tracking': 'time_tracking',
    'basic_accounting': 'accounting',
    'guidance': 'guidance',
    'multi_currency': 'multi_currency',
    'banking': 'banking',
    'employees': 'employees',
  };

  /// Resolves the OSS feature names granted to [userId] (optionally scoped
  /// to a [businessId]).
  ///
  /// Always `null` in this stub — the contractual fail-open signal meaning
  /// "grant every OSS feature" (the fixed OSS-baseline behavior; see the
  /// class comment). The real module returns the [featureByKey]-mapped names
  /// unless its data source fails.
  Future<Set<String>?> ossFeatureNames(
    Session session, {
    required UuidValue userId,
    int? businessId,
  }) async => null;

  /// Checks whether the raw commercial [capability] key is granted to
  /// [userId] (optionally scoped to a [businessId]).
  ///
  /// Always `true` in this stub — fail-open, mirroring the real module's
  /// outage behavior and the OSS baseline where every capability is granted
  /// (see the class comment).
  Future<bool> hasCapability(
    Session session, {
    required String capability,
    required UuidValue userId,
    int? businessId,
  }) async => true;
}
