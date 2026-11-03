#!/usr/bin/env dart

/// Guard the public contract of the Gewerber commercial module stubs.
///
/// The stub packages exist so that open-source builds resolve the closed module
/// without private access. They must therefore expose *exactly* the public
/// contract (see README "Public contract" and `CONTRACT.md` in
/// `Gewerber/gewerber-backend-commercial`) — never the module's internals.
///
/// Slimming the stubs (Gewerber/gewerber-backend-stubs#16) removed the whole
/// subscription surface, and the drift it prevented has already bitten once:
/// the waitlist attribution fields were missing from the generated artifacts
/// while the models declared them. This script makes both failure modes fail
/// loudly:
///
///   1. forbidden symbols — no module-internal identifier may appear in stub
///      sources, file names, or generated protocol;
///   2. module table allow-list — no `commercial_*` table may be created except
///      the public ones;
///   3. model/migration parity — the committed migration must carry exactly the
///      columns the generated table models declare (a stale copy means the
///      module schema merged into a *consuming* project's migration chain is
///      wrong, and inserts fail at runtime with an undefined_column error);
///   4. endpoint allow-list — only the public endpoints may be exported.
///
/// Usage: dart tool/check_public_contract.dart [--repo-root PATH]
library;

import 'dart:convert';
import 'dart:io';

// Module-internal vocabulary. Matched as plain case-insensitive substrings on
// purpose: the leak shape is camelCase (`SubscriptionCaller`, `adminSubscription`,
// `PayPalGateway`, `planTier`), and a word-boundary pattern would sail straight
// past all of them. Nothing in the legitimate contract vocabulary contains any
// of these substrings, so the wider net costs no false positives.
const _forbidden = <String>[
  'subscription',
  'paypal',
  'promo',
  'admin_subscription',
  'checkout',
  'plan_tier',
  'payment',
];

// Paths whose *prose* may legitimately mention the closed module to explain what
// the public entrypoint stands in for. Comment lines only — code in these paths
// is still held to the full forbid-list.
const _proseExemptions = <String, List<String>>{
  'gewerber_backend_commercial_server/lib/src/billing': ['payment'],
  // Serverpod's generated repository boilerplate documents a Dart stream
  // subscription — the framework word, not the closed module's subscription
  // feature. The scan is a plain substring match, so exempt that one term on
  // comment lines in the generated trees only; identifiers and code stay
  // fully scanned.
  'gewerber_backend_commercial_server/lib/src/generated': ['subscription'],
};

// Tables the public contract owns.
const _publicTables = <String>['commercial_waitlist_entry'];

// Endpoints the public contract exposes, as `<endpoint>.<method>`.
const _publicEndpoints = <String>['commercial.status', 'waitlist.join'];

// Only these extensions carry code or schema; README.md files under `lib/` are
// boundary notes describing the *closed* module's intended scope on purpose.
const _scannedSuffixes = <String>{'.dart', '.yaml', '.yml', '.json', '.sql'};

final _migrationDir = RegExp(r'^\d{17}');
final _forbiddenRe = RegExp(_forbidden.join('|'), caseSensitive: false);
final _commentRe = RegExp(r'^\s*(///?|\*|#)');
final _tableRe = RegExp(r"super\(tableName:\s*'([^']+)'\)");
final _columnsRe = RegExp(
  r'List<_?i?[a-z0-9]*\.Column> get columns => \[(.*?)\];',
  dotAll: true,
);
final _identRe = RegExp(r'[A-Za-z_][A-Za-z0-9_]*');

String _basename(Directory directory) {
  final segments = directory.uri.pathSegments.where((s) => s.isNotEmpty);
  return segments.isEmpty ? '' : segments.last;
}

String _relativePath(FileSystemEntity entity, Directory root) {
  final rootPath = root.absolute.path;
  var path = entity.absolute.path;
  if (path.startsWith(rootPath)) {
    path = path.substring(rootPath.length);
  }
  path = path.replaceAll(Platform.pathSeparator, '/');
  while (path.startsWith('/')) {
    path = path.substring(1);
  }
  return path;
}

String _suffix(String path) {
  final dot = path.lastIndexOf('.');
  final separator = path.lastIndexOf(Platform.pathSeparator);
  return dot > separator ? path.substring(dot) : '';
}

List<File> _files(Directory root) {
  return root.listSync(recursive: true).whereType<File>().toList()
    ..sort((a, b) => a.path.compareTo(b.path));
}

bool _listEquals(List<String> a, List<String> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// Report forbidden symbols in code, schema, generated protocol, and paths.
List<String> _scanForbidden(Directory repoRoot) {
  final findings = <String>[];
  for (final file in _files(repoRoot)) {
    if (!_scannedSuffixes.contains(_suffix(file.path))) continue;

    final relative = _relativePath(file, repoRoot);
    final parts = relative.split('/');
    if (!parts.contains('lib') && !parts.contains('migrations')) continue;
    if (parts.contains('.dart_tool')) continue;

    // A file *named* after module internals discloses them just as loudly.
    final stemHits =
        _forbiddenRe
            .allMatches(parts.last)
            .map((match) => match.group(0)!.toLowerCase())
            .toSet()
            .toList()
          ..sort();
    if (stemHits.isNotEmpty) {
      findings.add('$relative: file name discloses ${stemHits.join(', ')}');
    }

    final parent = parts.sublist(0, parts.length - 1).join('/');
    final lines = file.readAsLinesSync();
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final hits =
          _forbiddenRe
              .allMatches(line)
              .map((match) => match.group(0)!.toLowerCase())
              .toSet()
              .toList()
            ..sort();
      for (final term in hits) {
        // Only documentation lines are exempt; code never is.
        final exempted =
            _commentRe.hasMatch(line) &&
            _proseExemptions.entries.any(
              (entry) =>
                  parent.startsWith(entry.key) && entry.value.contains(term),
            );
        if (!exempted) {
          findings.add('$relative:${i + 1}: $term');
        }
      }
    }
  }
  return findings;
}

/// Map each generated table model's table name to its declared columns.
Map<String, List<String>> _generatedTableColumns(Directory repoRoot) {
  final tables = <String, List<String>>{};
  final generated = Directory(
    '${repoRoot.path}/gewerber_backend_commercial_server/lib/src/generated',
  );
  if (!generated.existsSync()) return tables;

  final files =
      generated
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path));
  for (final file in files) {
    final source = file.readAsStringSync();
    final names = _tableRe
        .allMatches(source)
        .map((match) => match.group(1)!)
        .toList();
    final columnsMatch = _columnsRe.firstMatch(source);
    if (names.isEmpty || columnsMatch == null) continue;
    final columns = _identRe
        .allMatches(columnsMatch.group(1)!)
        .map((match) => match.group(0)!)
        .toList();
    for (final name in names) {
      tables.putIfAbsent(name, () => columns);
    }
  }
  return tables;
}

/// Return the latest migration name and its tables (name -> columns).
(String, Map<String, List<String>>) _migrationTables(Directory repoRoot) {
  final migrations = Directory(
    '${repoRoot.path}/gewerber_backend_commercial_server/migrations',
  );
  final versions =
      migrations
          .listSync()
          .whereType<Directory>()
          .where((directory) => _migrationDir.hasMatch(_basename(directory)))
          .toList()
        ..sort((a, b) => _basename(a).compareTo(_basename(b)));
  if (versions.isEmpty) {
    stderr.writeln('::error::no migrations found in the stub module');
    exit(1);
  }
  final latest = versions.last;
  final definition = jsonDecode(
    File('${latest.path}/definition.json').readAsStringSync(),
  ) as Map<String, dynamic>;
  final tables = <String, List<String>>{
    for (final table in definition['tables'] as List)
      (table as Map<String, dynamic>)['name'] as String: [
        for (final column in table['columns'] as List)
          (column as Map<String, dynamic>)['name'] as String,
      ],
  };
  return (_basename(latest), tables);
}

List<String> _checkTablesAndColumns(Directory repoRoot) {
  final findings = <String>[];
  final (latest, tables) = _migrationTables(repoRoot);

  for (final name in tables.keys) {
    if (name.startsWith('commercial_') && !_publicTables.contains(name)) {
      findings.add(
        '$latest: creates private module table `$name` '
        '(public contract allows: ${_publicTables.join(', ')})',
      );
    }
  }

  final declared = _generatedTableColumns(repoRoot);
  for (final name in (declared.keys.toList()..sort())) {
    final columns = declared[name]!;
    if (!tables.containsKey(name)) {
      findings.add(
        '$latest: table `$name` is declared by a model but missing from the '
        'migration',
      );
    } else if (!_listEquals(columns, tables[name]!)) {
      findings.add(
        '$latest: table `$name` column drift — model declares '
        '${columns.join(', ')} but the migration ships '
        '${tables[name]!.join(', ')}',
      );
    }
  }
  final undeclared =
      tables.keys
          .where(
            (name) =>
                !declared.containsKey(name) && name.startsWith('commercial_'),
          )
          .toList()
        ..sort();
  for (final name in undeclared) {
    findings.add('$latest: table `$name` has no generated model behind it');
  }
  return findings;
}

/// Assert the exported endpoint/method surface against the public contract.
List<String> _checkEndpoints(Directory repoRoot) {
  final protocol = File(
    '${repoRoot.path}/gewerber_backend_commercial_server/lib/src/generated/protocol.yaml',
  );
  final exported = <String>[];
  var endpoint = '';
  for (final line in protocol.readAsLinesSync()) {
    if (line.trim().isEmpty || line.trim().startsWith('#')) continue;
    if (!line.startsWith(' ')) {
      endpoint = line.trim().replaceFirst(RegExp(r':$'), '').trim();
    } else if (endpoint.isNotEmpty) {
      var method = line.trim();
      if (method.startsWith('-')) method = method.substring(1);
      method = method.replaceFirst(RegExp(r':$'), '').trim();
      exported.add('$endpoint.$method');
    }
  }

  final exportedSet = exported.toSet();
  final publicSet = _publicEndpoints.toSet();
  final unexpected = exportedSet.difference(publicSet).toList()..sort();
  final missing = publicSet.difference(exportedSet).toList()..sort();
  return [
    for (final name in unexpected)
      'protocol.yaml exports `$name` outside the public contract',
    for (final name in missing)
      'protocol.yaml no longer exposes the public endpoint `$name`',
  ];
}

void main(List<String> args) {
  var repoRoot = Directory.current;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--repo-root':
        if (i + 1 >= args.length) {
          stderr.writeln('Missing value for --repo-root.');
          exit(2);
        }
        repoRoot = Directory(args[++i]);
      default:
        stderr.writeln('Unknown argument: ${args[i]}');
        stderr.writeln(
          'Usage: dart tool/check_public_contract.dart [--repo-root PATH]',
        );
        exit(2);
    }
  }
  repoRoot = repoRoot.absolute;

  final checks = <String, List<String> Function(Directory)>{
    'forbidden symbols': _scanForbidden,
    'module tables and column parity': _checkTablesAndColumns,
    'endpoint surface': _checkEndpoints,
  };

  var failed = false;
  for (final entry in checks.entries) {
    final findings = entry.value(repoRoot);
    if (findings.isNotEmpty) {
      failed = true;
      stdout.writeln('::error::${entry.key} violated the public contract:');
      for (final finding in findings) {
        stdout.writeln('  $finding');
      }
    } else {
      stdout.writeln('OK: ${entry.key}');
    }
  }

  if (failed) {
    stderr.writeln(
      "\nThese stubs are the closed module's *public contract*, not a mirror of "
      "its implementation. If the contract itself changed, update CONTRACT.md, "
      "this script's allow-lists, and the README together.",
    );
    exit(1);
  }
}
