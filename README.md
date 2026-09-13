# gewerber-backend-stubs

Public placeholder packages for the closed-source
[`gewerber-backend-commercial`](https://github.com/Gewerber/gewerber-backend-commercial)
Serverpod module (nickname `commercial`).

## Purpose

Serverpod embeds the clients of all modules listed in `generator.yaml` into the
generated client SDK of a server. The open-source Gewerber backend therefore
has a compile-time dependency on `gewerber_backend_commercial_server` and
`gewerber_backend_commercial_client`. This repository provides public stand-in
packages with identical names, exposing the module's public contract, so that
**open-source builds work without access to the private repository**.

- `gewerber_backend_commercial_client` — generated client for the public
  surface only: the `commercial` (health) and `waitlist` endpoint callers plus
  the serializable waitlist models (including the first-touch attribution
  fields).
- `gewerber_backend_commercial_server` — the matching generated `Endpoints`
  and `Protocol` (six waitlist types and the `commercial_waitlist_entry`
  table), plus the wiring entrypoint `wireCommercialBilling(Serverpod)` (an
  unconditional no-op with the same signature as the real module),
  `CommercialEntitlementInstaller`, and `CommercialEntitlementProvider` (fixed
  fail-open behavior: `ossFeatureNames` returns `null` = grant-all,
  `hasCapability` returns `true`). All endpoint method bodies throw
  `UnimplementedError`. Contains no business logic.

Contributors with access to the private repository resolve the real packages
via a gitignored `pubspec_overrides.yaml` pointing at their local clone.
Release CI/CD resolves the real module via a git `insteadOf` rule injected
with a token.

## Public contract

The stubs mirror exactly the public contract defined in `CONTRACT.md`
(`Gewerber/gewerber-backend-commercial#19`): interface-level parity with the
closed module's public types and call signatures. Stub internals are free and
need not match the real implementation. Any contract change requires a
same-round update of this repository (see the checklist in CONTRACT.md §6).

## CI guards

`serverpod analyze` alone cannot protect this boundary, so CI adds three checks:

- **`contract`** — `tool/check_public_contract.py` (run it locally before
  pushing; it needs no toolchain beyond `python3`). Fails if the stubs
  reintroduce module-internal vocabulary (`subscription`, `paypal`, `promo`,
  `checkout`, `plan_tier`, `payment`) in any source, schema, or generated
  artifact; create a `commercial_*` table outside the contract; widen or shrink
  the exported endpoint surface (`commercial.status`, `waitlist.join`); or let
  the committed migration drift from the columns the generated models declare.
  The last check is the one that would have caught the missing waitlist
  attribution fields: Serverpod folds *this* module's schema into each
  consuming project's migration chain, so a stale artifact here silently
  produces a wrong table there.
- **`codegen`** — runs `serverpod generate --force` with the CLI version the
  packages depend on and fails on any diff, so committed artifacts cannot drift
  from the models or be hand-edited.
- **`oss-consumer`** — checks out the open-source backend, injects *these*
  working-tree stubs through its gitignored root `pubspec_overrides.yaml`, and
  runs `dart pub get` + `dart analyze`. Because the consumer resolves this
  repository at `ref: main`, a merged change lands downstream immediately:
  this is what makes "the contract change breaks its consumer" a red CI on the
  PR instead of a broken build on `main`. It also runs weekly to catch drift
  from the consumer side.

`README.md` notes under `lib/src/modules/` describing the *closed* modules'
intended scope are deliberate boundary documentation and are not scanned for
forbidden vocabulary; only code, schema, and generated artifacts are.

## Regenerating

After changing the model definitions under
`gewerber_backend_commercial_server/lib/src/`, run `serverpod generate` and
`serverpod create-migration` from `gewerber_backend_commercial_server/` (the
module `generator.yaml` also regenerates the client protocol package). The
generated endpoints, protocol, and migrations are committed.

The migration history is a clean slate: one fresh initial migration containing
only the `commercial_waitlist_entry` table. Dev databases that applied the old
stub migrations must be **recreated** — the migration chain was replaced, not
appended, and cannot be upgraded in place.
