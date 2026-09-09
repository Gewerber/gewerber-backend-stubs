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

import 'package:serverpod/serverpod.dart' as _is;
import '../../../modules/waitlist/models/waitlist_locale.dart' as _imzvqjwd;
import '../../../modules/waitlist/models/waitlist_source.dart' as _i4nloxkl;
import '../../../modules/waitlist/models/waitlist_status.dart' as _ilsh1rjc;

abstract class WaitlistEntry
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  WaitlistEntry._({
    this.id,
    required this.email,
    _imzvqjwd.WaitlistLocale? locale,
    _i4nloxkl.WaitlistSource? source,
    this.referrer,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.utmTerm,
    this.utmContent,
    this.gclid,
    this.fbclid,
    this.landingPage,
    this.businessType,
    _ilsh1rjc.WaitlistStatus? status,
    DateTime? createdAt,
    this.invitedAt,
  }) : locale = locale ?? _imzvqjwd.WaitlistLocale.de,
       source = source ?? _i4nloxkl.WaitlistSource.website,
       status = status ?? _ilsh1rjc.WaitlistStatus.pending,
       createdAt = createdAt ?? DateTime.now();

  factory WaitlistEntry({
    int? id,
    required String email,
    _imzvqjwd.WaitlistLocale? locale,
    _i4nloxkl.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? utmTerm,
    String? utmContent,
    String? gclid,
    String? fbclid,
    String? landingPage,
    String? businessType,
    _ilsh1rjc.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) = _WaitlistEntryImpl;

  factory WaitlistEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return WaitlistEntry(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      locale: jsonSerialization['locale'] == null
          ? null
          : _imzvqjwd.WaitlistLocale.fromJson(
              (jsonSerialization['locale'] as String),
            ),
      source: jsonSerialization['source'] == null
          ? null
          : _i4nloxkl.WaitlistSource.fromJson(
              (jsonSerialization['source'] as String),
            ),
      referrer: jsonSerialization['referrer'] as String?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      utmTerm: jsonSerialization['utmTerm'] as String?,
      utmContent: jsonSerialization['utmContent'] as String?,
      gclid: jsonSerialization['gclid'] as String?,
      fbclid: jsonSerialization['fbclid'] as String?,
      landingPage: jsonSerialization['landingPage'] as String?,
      businessType: jsonSerialization['businessType'] as String?,
      status: jsonSerialization['status'] == null
          ? null
          : _ilsh1rjc.WaitlistStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      invitedAt: jsonSerialization['invitedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['invitedAt']),
    );
  }

  static final t = WaitlistEntryTable();

  static const db = WaitlistEntryRepository._();

  @override
  int? id;

  String email;

  _imzvqjwd.WaitlistLocale locale;

  _i4nloxkl.WaitlistSource source;

  String? referrer;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  String? utmTerm;

  String? utmContent;

  String? gclid;

  String? fbclid;

  String? landingPage;

  String? businessType;

  _ilsh1rjc.WaitlistStatus status;

  DateTime createdAt;

  DateTime? invitedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  WaitlistEntry copyWith({
    int? id,
    String? email,
    _imzvqjwd.WaitlistLocale? locale,
    _i4nloxkl.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? utmTerm,
    String? utmContent,
    String? gclid,
    String? fbclid,
    String? landingPage,
    String? businessType,
    _ilsh1rjc.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (utmTerm != null) 'utmTerm': utmTerm,
      if (utmContent != null) 'utmContent': utmContent,
      if (gclid != null) 'gclid': gclid,
      if (fbclid != null) 'fbclid': fbclid,
      if (landingPage != null) 'landingPage': landingPage,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (utmTerm != null) 'utmTerm': utmTerm,
      if (utmContent != null) 'utmContent': utmContent,
      if (gclid != null) 'gclid': gclid,
      if (fbclid != null) 'fbclid': fbclid,
      if (landingPage != null) 'landingPage': landingPage,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  static WaitlistEntryInclude include() {
    return WaitlistEntryInclude._();
  }

  static WaitlistEntryIncludeList includeList({
    _is.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    WaitlistEntryInclude? include,
  }) {
    return WaitlistEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WaitlistEntryImpl extends WaitlistEntry {
  _WaitlistEntryImpl({
    int? id,
    required String email,
    _imzvqjwd.WaitlistLocale? locale,
    _i4nloxkl.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? utmTerm,
    String? utmContent,
    String? gclid,
    String? fbclid,
    String? landingPage,
    String? businessType,
    _ilsh1rjc.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) : super._(
         id: id,
         email: email,
         locale: locale,
         source: source,
         referrer: referrer,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         utmTerm: utmTerm,
         utmContent: utmContent,
         gclid: gclid,
         fbclid: fbclid,
         landingPage: landingPage,
         businessType: businessType,
         status: status,
         createdAt: createdAt,
         invitedAt: invitedAt,
       );

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  WaitlistEntry copyWith({
    Object? id = _Undefined,
    String? email,
    _imzvqjwd.WaitlistLocale? locale,
    _i4nloxkl.WaitlistSource? source,
    Object? referrer = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    Object? utmTerm = _Undefined,
    Object? utmContent = _Undefined,
    Object? gclid = _Undefined,
    Object? fbclid = _Undefined,
    Object? landingPage = _Undefined,
    Object? businessType = _Undefined,
    _ilsh1rjc.WaitlistStatus? status,
    DateTime? createdAt,
    Object? invitedAt = _Undefined,
  }) {
    return WaitlistEntry(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      locale: locale ?? this.locale,
      source: source ?? this.source,
      referrer: referrer is String? ? referrer : this.referrer,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      utmTerm: utmTerm is String? ? utmTerm : this.utmTerm,
      utmContent: utmContent is String? ? utmContent : this.utmContent,
      gclid: gclid is String? ? gclid : this.gclid,
      fbclid: fbclid is String? ? fbclid : this.fbclid,
      landingPage: landingPage is String? ? landingPage : this.landingPage,
      businessType: businessType is String? ? businessType : this.businessType,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      invitedAt: invitedAt is DateTime? ? invitedAt : this.invitedAt,
    );
  }
}

class WaitlistEntryUpdateTable extends _is.UpdateTable<WaitlistEntryTable> {
  WaitlistEntryUpdateTable(super.table);

  _is.ColumnValue<String, String> email(String value) => _is.ColumnValue(
    table.email,
    value,
  );

  _is.ColumnValue<_imzvqjwd.WaitlistLocale, _imzvqjwd.WaitlistLocale> locale(
    _imzvqjwd.WaitlistLocale value,
  ) => _is.ColumnValue(
    table.locale,
    value,
  );

  _is.ColumnValue<_i4nloxkl.WaitlistSource, _i4nloxkl.WaitlistSource> source(
    _i4nloxkl.WaitlistSource value,
  ) => _is.ColumnValue(
    table.source,
    value,
  );

  _is.ColumnValue<String, String> referrer(String? value) => _is.ColumnValue(
    table.referrer,
    value,
  );

  _is.ColumnValue<String, String> utmSource(String? value) => _is.ColumnValue(
    table.utmSource,
    value,
  );

  _is.ColumnValue<String, String> utmMedium(String? value) => _is.ColumnValue(
    table.utmMedium,
    value,
  );

  _is.ColumnValue<String, String> utmCampaign(String? value) => _is.ColumnValue(
    table.utmCampaign,
    value,
  );

  _is.ColumnValue<String, String> utmTerm(String? value) => _is.ColumnValue(
    table.utmTerm,
    value,
  );

  _is.ColumnValue<String, String> utmContent(String? value) => _is.ColumnValue(
    table.utmContent,
    value,
  );

  _is.ColumnValue<String, String> gclid(String? value) => _is.ColumnValue(
    table.gclid,
    value,
  );

  _is.ColumnValue<String, String> fbclid(String? value) => _is.ColumnValue(
    table.fbclid,
    value,
  );

  _is.ColumnValue<String, String> landingPage(String? value) => _is.ColumnValue(
    table.landingPage,
    value,
  );

  _is.ColumnValue<String, String> businessType(String? value) =>
      _is.ColumnValue(
        table.businessType,
        value,
      );

  _is.ColumnValue<_ilsh1rjc.WaitlistStatus, _ilsh1rjc.WaitlistStatus> status(
    _ilsh1rjc.WaitlistStatus value,
  ) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> invitedAt(DateTime? value) =>
      _is.ColumnValue(
        table.invitedAt,
        value,
      );
}

class WaitlistEntryTable extends _is.Table<int?> {
  WaitlistEntryTable({super.tableRelation})
    : super(tableName: 'commercial_waitlist_entry') {
    updateTable = WaitlistEntryUpdateTable(this);
    email = _is.ColumnString(
      'email',
      this,
    );
    locale = _is.ColumnEnum(
      'locale',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    source = _is.ColumnEnum(
      'source',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    referrer = _is.ColumnString(
      'referrer',
      this,
    );
    utmSource = _is.ColumnString(
      'utmSource',
      this,
    );
    utmMedium = _is.ColumnString(
      'utmMedium',
      this,
    );
    utmCampaign = _is.ColumnString(
      'utmCampaign',
      this,
    );
    utmTerm = _is.ColumnString(
      'utmTerm',
      this,
    );
    utmContent = _is.ColumnString(
      'utmContent',
      this,
    );
    gclid = _is.ColumnString(
      'gclid',
      this,
    );
    fbclid = _is.ColumnString(
      'fbclid',
      this,
    );
    landingPage = _is.ColumnString(
      'landingPage',
      this,
    );
    businessType = _is.ColumnString(
      'businessType',
      this,
    );
    status = _is.ColumnEnum(
      'status',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    invitedAt = _is.ColumnDateTime(
      'invitedAt',
      this,
    );
  }

  late final WaitlistEntryUpdateTable updateTable;

  late final _is.ColumnString email;

  late final _is.ColumnEnum<_imzvqjwd.WaitlistLocale> locale;

  late final _is.ColumnEnum<_i4nloxkl.WaitlistSource> source;

  late final _is.ColumnString referrer;

  late final _is.ColumnString utmSource;

  late final _is.ColumnString utmMedium;

  late final _is.ColumnString utmCampaign;

  late final _is.ColumnString utmTerm;

  late final _is.ColumnString utmContent;

  late final _is.ColumnString gclid;

  late final _is.ColumnString fbclid;

  late final _is.ColumnString landingPage;

  late final _is.ColumnString businessType;

  late final _is.ColumnEnum<_ilsh1rjc.WaitlistStatus> status;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime invitedAt;

  @override
  List<_is.Column> get columns => [
    id,
    email,
    locale,
    source,
    referrer,
    utmSource,
    utmMedium,
    utmCampaign,
    utmTerm,
    utmContent,
    gclid,
    fbclid,
    landingPage,
    businessType,
    status,
    createdAt,
    invitedAt,
  ];
}

class WaitlistEntryInclude extends _is.IncludeObject {
  WaitlistEntryInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => WaitlistEntry.t;
}

class WaitlistEntryIncludeList extends _is.IncludeList {
  WaitlistEntryIncludeList._({
    _is.WhereExpressionBuilder<WaitlistEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WaitlistEntry.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => WaitlistEntry.t;
}

class WaitlistEntryRepository {
  const WaitlistEntryRepository._();

  /// Returns a list of [WaitlistEntry]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<WaitlistEntry>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [WaitlistEntry] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<WaitlistEntry?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? offset,
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [WaitlistEntry] by its [id] or null if no such row exists.
  Future<WaitlistEntry?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<WaitlistEntry>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [WaitlistEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [WaitlistEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> insert(
    _is.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<WaitlistEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [WaitlistEntry] and returns the inserted row.
  ///
  /// The returned [WaitlistEntry] will have its `id` field set.
  Future<WaitlistEntry> insertRow(
    _is.DatabaseSession session,
    WaitlistEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<WaitlistEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [WaitlistEntry]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [WaitlistEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> upsert(
    _is.DatabaseSession session,
    List<WaitlistEntry> rows, {
    required _is.ColumnSelections<WaitlistEntryTable> conflictColumns,
    _is.ColumnSelections<WaitlistEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<WaitlistEntryTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<WaitlistEntry>(
      rows,
      conflictColumns: conflictColumns(WaitlistEntry.t),
      updateColumns: updateColumns?.call(WaitlistEntry.t),
      updateWhere: updateWhere?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [WaitlistEntry] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [WaitlistEntry] will have its `id` field set.
  Future<WaitlistEntry?> upsertRow(
    _is.DatabaseSession session,
    WaitlistEntry row, {
    required _is.ColumnSelections<WaitlistEntryTable> conflictColumns,
    _is.ColumnSelections<WaitlistEntryTable>? updateColumns,
    _is.WhereExpressionBuilder<WaitlistEntryTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<WaitlistEntry>(
      row,
      conflictColumns: conflictColumns(WaitlistEntry.t),
      updateColumns: updateColumns?.call(WaitlistEntry.t),
      updateWhere: updateWhere?.call(WaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [WaitlistEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> update(
    _is.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _is.ColumnSelections<WaitlistEntryTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<WaitlistEntry>(
      rows,
      columns: columns?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [WaitlistEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<WaitlistEntry> updateRow(
    _is.DatabaseSession session,
    WaitlistEntry row, {
    _is.ColumnSelections<WaitlistEntryTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<WaitlistEntry>(
      row,
      columns: columns?.call(WaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WaitlistEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<WaitlistEntry?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<WaitlistEntryUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<WaitlistEntry>(
      id,
      columnValues: columnValues(WaitlistEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [WaitlistEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<WaitlistEntryUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<WaitlistEntryTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<WaitlistEntry>(
      columnValues: columnValues(WaitlistEntry.t.updateTable),
      where: where(WaitlistEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [WaitlistEntry]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> delete(
    _is.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<WaitlistEntry>(
      rows,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [WaitlistEntry].
  Future<WaitlistEntry> deleteRow(
    _is.DatabaseSession session,
    WaitlistEntry row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WaitlistEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<WaitlistEntryTable> where,
    _is.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _is.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<WaitlistEntry>(
      where: where(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [WaitlistEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<WaitlistEntryTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<WaitlistEntry>(
      where: where(WaitlistEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
