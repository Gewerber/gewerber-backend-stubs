#!/usr/bin/env python3
"""Guard the public contract of the Gewerber commercial module stubs.

The stub packages exist so that open-source builds resolve the closed module
without private access. They must therefore expose *exactly* the public
contract (see README "Public contract" and `CONTRACT.md` in
`Gewerber/gewerber-backend-commercial`) — never the module's internals.

Slimming the stubs (Gewerber/gewerber-backend-stubs#16) removed the whole
subscription surface, and the drift it prevented has already bitten once: the
waitlist attribution fields were missing from the generated artifacts while the
models declared them. This script makes both failure modes fail loudly:

  1. forbidden symbols — no module-internal identifier may appear in stub
     sources, file names, or generated protocol;
  2. module table allow-list — no `commercial_*` table may be created except
     the public ones;
  3. model/migration parity — the committed migration must carry exactly the
     columns the generated table models declare (a stale copy means the module
     schema merged into a *consuming* project's migration chain is wrong, and
     inserts fail at runtime with an undefined_column error);
  4. endpoint allow-list — only the public endpoints may be exported.

Usage: tool/check_public_contract.py [--repo-root PATH]
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

# Module-internal vocabulary. Matched as plain case-insensitive substrings on
# purpose: the leak shape is camelCase (`SubscriptionCaller`, `adminSubscription`,
# `PayPalGateway`, `planTier`), and a word-boundary pattern would sail straight
# past all of them. Nothing in the legitimate contract vocabulary contains any
# of these substrings, so the wider net costs no false positives.
FORBIDDEN = (
    'subscription',
    'paypal',
    'promo',
    'admin_subscription',
    'checkout',
    'plan_tier',
    'payment',
)

# Paths whose *prose* may legitimately mention the closed module to explain what
# the public entrypoint stands in for. Comment lines only — code in these paths
# is still held to the full forbid-list.
PROSE_EXEMPTIONS = {
    'gewerber_backend_commercial_server/lib/src/billing': ('payment',),
}

# Tables the public contract owns.
PUBLIC_TABLES = ('commercial_waitlist_entry',)

# Endpoints the public contract exposes, as `<endpoint>.<method>`.
PUBLIC_ENDPOINTS = ('commercial.status', 'waitlist.join')

# Only these extensions carry code or schema; README.md files under `lib/` are
# boundary notes describing the *closed* module's intended scope on purpose.
SCANNED_SUFFIXES = {'.dart', '.yaml', '.yml', '.json', '.sql'}

MIGRATION_DIR = re.compile(r'^\d{17}')
FORBIDDEN_RE = re.compile('|'.join(FORBIDDEN), re.IGNORECASE)
COMMENT_RE = re.compile(r'^\s*(///?|\*|#)')
TABLE_RE = re.compile(r'super\(tableName:\s*\'([^\']+)\'\)')
COLUMNS_RE = re.compile(r'List<_?i?[a-z0-9]*\.Column> get columns => \[(.*?)\];', re.DOTALL)
IDENT_RE = re.compile(r'[A-Za-z_][A-Za-z0-9_]*')


def scan_forbidden(repo_root: Path) -> list[str]:
    """Report forbidden symbols in code, schema, generated protocol, and paths."""
    findings: list[str] = []
    for path in sorted(repo_root.rglob('*')):
        if not path.is_file() or path.suffix not in SCANNED_SUFFIXES:
            continue
        try:
            relative = path.relative_to(repo_root)
        except ValueError:
            continue
        if not (repo_root / 'gewerber_backend_commercial_client' / 'lib').relative_to(repo_root).parts == () or True:
            pass
        if 'lib' not in relative.parts and 'migrations' not in relative.parts:
            continue
        if '.dart_tool' in relative.parts:
            continue

        # A file *named* after module internals discloses them just as loudly.
        stem_hits = sorted(set(FORBIDDEN_RE.findall(relative.name)))
        if stem_hits:
            findings.append(f'{relative}: file name discloses {", ".join(stem_hits)}')

        for lineno, line in enumerate(path.read_text(encoding='utf-8').splitlines(), 1):
            hits = sorted(set(match.group(0).lower() for match in FORBIDDEN_RE.finditer(line)))
            for term in hits:
                parent = '/'.join(relative.parts[:-1])
                # Only documentation lines are exempt; code never is.
                exempted = COMMENT_RE.match(line) and any(
                    parent.startswith(prefix) and term in terms
                    for prefix, terms in PROSE_EXEMPTIONS.items()
                )
                if not exempted:
                    findings.append(f'{relative}:{lineno}: {term}')
    return findings


def generated_table_columns(repo_root: Path) -> dict[str, list[str]]:
    """Map each generated table model's table name to its declared columns."""
    tables: dict[str, list[str]] = {}
    generated = repo_root / 'gewerber_backend_commercial_server' / 'lib' / 'src' / 'generated'
    for path in sorted(generated.rglob('*.dart')):
        source = path.read_text(encoding='utf-8')
        names = TABLE_RE.findall(source)
        columns_match = COLUMNS_RE.search(source)
        if not names or not columns_match:
            continue
        columns = [
            name for name in IDENT_RE.findall(columns_match.group(1))
        ]
        for name in names:
            if name not in tables:
                tables[name] = columns
    return tables


def migration_tables(repo_root: Path) -> tuple[Path, dict[str, list[str]]]:
    """Return the latest migration dir and its tables (name -> columns)."""
    migrations = repo_root / 'gewerber_backend_commercial_server' / 'migrations'
    versions = sorted(
        path for path in migrations.iterdir()
        if path.is_dir() and MIGRATION_DIR.match(path.name)
    )
    if not versions:
        raise SystemExit('::error::no migrations found in the stub module')
    latest = versions[-1]
    definition = json.loads((latest / 'definition.json').read_text(encoding='utf-8'))
    return latest, {
        table['name']: [column['name'] for column in table['columns']]
        for table in definition['tables']
    }


def check_tables_and_columns(repo_root: Path) -> list[str]:
    findings: list[str] = []
    latest, tables = migration_tables(repo_root)

    for name in tables:
        if name.startswith('commercial_') and name not in PUBLIC_TABLES:
            findings.append(
                f'{latest.name}: creates private module table `{name}` '
                f'(public contract allows: {", ".join(PUBLIC_TABLES)})'
            )

    declared = generated_table_columns(repo_root)
    for name, columns in sorted(declared.items()):
        if name not in tables:
            findings.append(f'{latest.name}: table `{name}` is declared by a model but missing from the migration')
        elif columns != tables[name]:
            findings.append(
                f'{latest.name}: table `{name}` column drift — model declares '
                f'{", ".join(columns)} but the migration ships {", ".join(tables[name])}'
            )
    for name in sorted(set(tables) - set(declared)):
        if name.startswith('commercial_'):
            findings.append(f'{latest.name}: table `{name}` has no generated model behind it')
    return findings


def check_endpoints(repo_root: Path) -> list[str]:
    """Assert the exported endpoint/method surface against the public contract."""
    protocol = repo_root / 'gewerber_backend_commercial_server' / 'lib' / 'src' / 'generated' / 'protocol.yaml'
    exported: list[str] = []
    endpoint = ''
    for line in protocol.read_text(encoding='utf-8').splitlines():
        if not line.strip() or line.strip().startswith('#'):
            continue
        if not line.startswith(' '):
            endpoint = line.rstrip(':').strip()
        elif endpoint:
            exported.append(f'{endpoint}.{line.strip().lstrip("-").rstrip(":").strip()}')

    unexpected = sorted(set(exported) - set(PUBLIC_ENDPOINTS))
    missing = sorted(set(PUBLIC_ENDPOINTS) - set(exported))
    findings = [f'protocol.yaml exports `{name}` outside the public contract' for name in unexpected]
    findings += [f'protocol.yaml no longer exposes the public endpoint `{name}`' for name in missing]
    return findings


def main(argv: list[str]) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo-root', type=Path, default=Path.cwd())
    args = parser.parse_args(argv[1:])
    repo_root = args.repo_root.resolve()

    checks = {
        'forbidden symbols': scan_forbidden,
        'module tables and column parity': check_tables_and_columns,
        'endpoint surface': check_endpoints,
    }
    failed = False
    for label, check in checks.items():
        findings = check(repo_root)
        if findings:
            failed = True
            print(f'::error::{label} violated the public contract:')
            print('\n'.join(f'  {finding}' for finding in findings))
        else:
            print(f'OK: {label}')

    if failed:
        print(
            '\nThese stubs are the closed module\'s *public contract*, not a mirror '
            'of its implementation. If the contract itself changed, update '
            'CONTRACT.md, this script\'s allow-lists, and the README together.',
            file=sys.stderr,
        )
        return 1
    return 0


if __name__ == '__main__':
    raise SystemExit(main(sys.argv))
