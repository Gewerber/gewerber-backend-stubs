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
same-round update of this repository (see the checklist in CONTRACT.md §6). CI
here keeps the workspace analyzable; the open-source backend's CI validates
resolution against these stubs.

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
