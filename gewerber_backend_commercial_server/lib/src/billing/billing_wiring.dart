import 'package:serverpod/serverpod.dart';

import 'commercial_entitlement_provider.dart';

// Re-exported so the installer interface and the provider it installs form a
// single public surface (the `export ... show ...` list in the library barrel
// relies on this).
export 'commercial_entitlement_provider.dart'
    show CommercialEntitlementProvider;

/// Host-implemented hook that installs a [CommercialEntitlementProvider] into
/// the host's dependency graph, replacing the OSS default entitlement
/// provider.
///
/// Interface parity with the closed module (CONTRACT §1): the OSS host
/// implements this installer (backend #39) and registers it in its service
/// locator. This stub only has to provide the type so the host compiles
/// without the private module; nothing is ever installed here.
abstract interface class CommercialEntitlementInstaller {
  /// Replaces the host's active entitlement provider with [provider].
  void installCommercialEntitlements(CommercialEntitlementProvider provider);
}

/// Wires commercial billing and entitlement handling onto [pod].
///
/// Same signature as the closed module's entrypoint (CONTRACT §1), so the
/// host can call it unconditionally from its `server.dart` before
/// [Serverpod.start] and swap real/stub at release time via an `insteadOf`
/// dependency override with no code change. The real implementation
/// self-gates on the `GEWERBER_COMMERCIAL_ENTITLEMENTS=true` environment
/// variable and, when enabled, mounts payment webhooks and schedules
/// reconciliation sweeps. This stub — the public stand-in for the private
/// module — has nothing to wire, so the call is an **unconditional no-op**
/// and OSS deployments stay unaffected.
Future<void> wireCommercialBilling(Serverpod pod) async {}
