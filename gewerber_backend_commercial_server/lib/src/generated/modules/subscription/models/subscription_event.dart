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

/// Audit trail of administrative actions on the commercial subscription
/// module (mirrors the OSS core's audit idiom: every mutation through the
/// `adminSubscription` endpoint writes one row).
///
/// Server-only: the table is never exposed to end-user clients, it exists
/// for the gewerber-mcp operator tooling and post-hoc review.
abstract class SubscriptionEvent
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  SubscriptionEvent._({
    this.id,
    this.actorUserId,
    required this.action,
    this.subscriptionId,
    this.promoCodeId,
    required this.details,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory SubscriptionEvent({
    int? id,
    _is.UuidValue? actorUserId,
    required String action,
    int? subscriptionId,
    int? promoCodeId,
    required String details,
    DateTime? createdAt,
  }) = _SubscriptionEventImpl;

  factory SubscriptionEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return SubscriptionEvent(
      id: jsonSerialization['id'] as int?,
      actorUserId: jsonSerialization['actorUserId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(
              jsonSerialization['actorUserId'],
            ),
      action: jsonSerialization['action'] as String,
      subscriptionId: jsonSerialization['subscriptionId'] as int?,
      promoCodeId: jsonSerialization['promoCodeId'] as int?,
      details: jsonSerialization['details'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = SubscriptionEventTable();

  static const db = SubscriptionEventRepository._();

  @override
  int? id;

  /// `AuthUser.id` of the acting administrator (`admin_user` allowlist
  /// entry), null in theory but always set by the endpoint.
  _is.UuidValue? actorUserId;

  /// Action identifier, always prefixed `admin.` (e.g.
  /// `admin.promo_code.create`, `admin.promo_code.status_set`).
  String action;

  /// Subscription the action targeted, when applicable.
  int? subscriptionId;

  /// Promo code the action targeted, when applicable.
  int? promoCodeId;

  /// JSON object with action-specific details (before/after values).
  String details;

  /// When the action was performed.
  DateTime createdAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [SubscriptionEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  SubscriptionEvent copyWith({
    int? id,
    _is.UuidValue? actorUserId,
    String? action,
    int? subscriptionId,
    int? promoCodeId,
    String? details,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.SubscriptionEvent',
      if (id != null) 'id': id,
      if (actorUserId != null) 'actorUserId': actorUserId?.toJson(),
      'action': action,
      if (subscriptionId != null) 'subscriptionId': subscriptionId,
      if (promoCodeId != null) 'promoCodeId': promoCodeId,
      'details': details,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {};
  }

  static SubscriptionEventInclude include() {
    return SubscriptionEventInclude._();
  }

  static SubscriptionEventIncludeList includeList({
    _is.WhereExpressionBuilder<SubscriptionEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    SubscriptionEventInclude? include,
  }) {
    return SubscriptionEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SubscriptionEventImpl extends SubscriptionEvent {
  _SubscriptionEventImpl({
    int? id,
    _is.UuidValue? actorUserId,
    required String action,
    int? subscriptionId,
    int? promoCodeId,
    required String details,
    DateTime? createdAt,
  }) : super._(
         id: id,
         actorUserId: actorUserId,
         action: action,
         subscriptionId: subscriptionId,
         promoCodeId: promoCodeId,
         details: details,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [SubscriptionEvent]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  SubscriptionEvent copyWith({
    Object? id = _Undefined,
    Object? actorUserId = _Undefined,
    String? action,
    Object? subscriptionId = _Undefined,
    Object? promoCodeId = _Undefined,
    String? details,
    DateTime? createdAt,
  }) {
    return SubscriptionEvent(
      id: id is int? ? id : this.id,
      actorUserId: actorUserId is _is.UuidValue?
          ? actorUserId
          : this.actorUserId,
      action: action ?? this.action,
      subscriptionId: subscriptionId is int?
          ? subscriptionId
          : this.subscriptionId,
      promoCodeId: promoCodeId is int? ? promoCodeId : this.promoCodeId,
      details: details ?? this.details,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class SubscriptionEventUpdateTable
    extends _is.UpdateTable<SubscriptionEventTable> {
  SubscriptionEventUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> actorUserId(
    _is.UuidValue? value,
  ) => _is.ColumnValue(
    table.actorUserId,
    value,
  );

  _is.ColumnValue<String, String> action(String value) => _is.ColumnValue(
    table.action,
    value,
  );

  _is.ColumnValue<int, int> subscriptionId(int? value) => _is.ColumnValue(
    table.subscriptionId,
    value,
  );

  _is.ColumnValue<int, int> promoCodeId(int? value) => _is.ColumnValue(
    table.promoCodeId,
    value,
  );

  _is.ColumnValue<String, String> details(String value) => _is.ColumnValue(
    table.details,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );
}

class SubscriptionEventTable extends _is.Table<int?> {
  SubscriptionEventTable({super.tableRelation})
    : super(tableName: 'commercial_subscription_event') {
    updateTable = SubscriptionEventUpdateTable(this);
    actorUserId = _is.ColumnUuid(
      'actorUserId',
      this,
    );
    action = _is.ColumnString(
      'action',
      this,
    );
    subscriptionId = _is.ColumnInt(
      'subscriptionId',
      this,
    );
    promoCodeId = _is.ColumnInt(
      'promoCodeId',
      this,
    );
    details = _is.ColumnString(
      'details',
      this,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final SubscriptionEventUpdateTable updateTable;

  /// `AuthUser.id` of the acting administrator (`admin_user` allowlist
  /// entry), null in theory but always set by the endpoint.
  late final _is.ColumnUuid actorUserId;

  /// Action identifier, always prefixed `admin.` (e.g.
  /// `admin.promo_code.create`, `admin.promo_code.status_set`).
  late final _is.ColumnString action;

  /// Subscription the action targeted, when applicable.
  late final _is.ColumnInt subscriptionId;

  /// Promo code the action targeted, when applicable.
  late final _is.ColumnInt promoCodeId;

  /// JSON object with action-specific details (before/after values).
  late final _is.ColumnString details;

  /// When the action was performed.
  late final _is.ColumnDateTime createdAt;

  @override
  List<_is.Column> get columns => [
    id,
    actorUserId,
    action,
    subscriptionId,
    promoCodeId,
    details,
    createdAt,
  ];
}

class SubscriptionEventInclude extends _is.IncludeObject {
  SubscriptionEventInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => SubscriptionEvent.t;
}

class SubscriptionEventIncludeList extends _is.IncludeList {
  SubscriptionEventIncludeList._({
    _is.WhereExpressionBuilder<SubscriptionEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SubscriptionEvent.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => SubscriptionEvent.t;
}

class SubscriptionEventRepository {
  const SubscriptionEventRepository._();

  /// Returns a list of [SubscriptionEvent]s matching the given query parameters.
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
  Future<List<SubscriptionEvent>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionEventTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SubscriptionEvent>(
      where: where?.call(SubscriptionEvent.t),
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SubscriptionEvent] matching the given query parameters.
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
  Future<SubscriptionEvent?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionEventTable>? where,
    int? offset,
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SubscriptionEvent>(
      where: where?.call(SubscriptionEvent.t),
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SubscriptionEvent] by its [id] or null if no such row exists.
  Future<SubscriptionEvent?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SubscriptionEvent>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SubscriptionEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [SubscriptionEvent]s will have their `id` fields set.
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
  Future<List<SubscriptionEvent>> insert(
    _is.DatabaseSession session,
    List<SubscriptionEvent> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<SubscriptionEvent>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [SubscriptionEvent] and returns the inserted row.
  ///
  /// The returned [SubscriptionEvent] will have its `id` field set.
  Future<SubscriptionEvent> insertRow(
    _is.DatabaseSession session,
    SubscriptionEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<SubscriptionEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [SubscriptionEvent]s in the list and returns the resulting rows.
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
  /// The returned [SubscriptionEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionEvent>> upsert(
    _is.DatabaseSession session,
    List<SubscriptionEvent> rows, {
    required _is.ColumnSelections<SubscriptionEventTable> conflictColumns,
    _is.ColumnSelections<SubscriptionEventTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionEventTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<SubscriptionEvent>(
      rows,
      conflictColumns: conflictColumns(SubscriptionEvent.t),
      updateColumns: updateColumns?.call(SubscriptionEvent.t),
      updateWhere: updateWhere?.call(SubscriptionEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [SubscriptionEvent] and returns the resulting row.
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
  /// The returned [SubscriptionEvent] will have its `id` field set.
  Future<SubscriptionEvent?> upsertRow(
    _is.DatabaseSession session,
    SubscriptionEvent row, {
    required _is.ColumnSelections<SubscriptionEventTable> conflictColumns,
    _is.ColumnSelections<SubscriptionEventTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionEventTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<SubscriptionEvent>(
      row,
      conflictColumns: conflictColumns(SubscriptionEvent.t),
      updateColumns: updateColumns?.call(SubscriptionEvent.t),
      updateWhere: updateWhere?.call(SubscriptionEvent.t),
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionEvent>> update(
    _is.DatabaseSession session,
    List<SubscriptionEvent> rows, {
    _is.ColumnSelections<SubscriptionEventTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<SubscriptionEvent>(
      rows,
      columns: columns?.call(SubscriptionEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [SubscriptionEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SubscriptionEvent> updateRow(
    _is.DatabaseSession session,
    SubscriptionEvent row, {
    _is.ColumnSelections<SubscriptionEventTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<SubscriptionEvent>(
      row,
      columns: columns?.call(SubscriptionEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SubscriptionEvent] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SubscriptionEvent?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<SubscriptionEventUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<SubscriptionEvent>(
      id,
      columnValues: columnValues(SubscriptionEvent.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SubscriptionEvent]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<SubscriptionEvent>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SubscriptionEventUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<SubscriptionEventTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<SubscriptionEvent>(
      columnValues: columnValues(SubscriptionEvent.t.updateTable),
      where: where(SubscriptionEvent.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [SubscriptionEvent]s in the list and returns the deleted rows.
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
  Future<List<SubscriptionEvent>> delete(
    _is.DatabaseSession session,
    List<SubscriptionEvent> rows, {
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<SubscriptionEvent>(
      rows,
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [SubscriptionEvent].
  Future<SubscriptionEvent> deleteRow(
    _is.DatabaseSession session,
    SubscriptionEvent row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SubscriptionEvent>(
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
  Future<List<SubscriptionEvent>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionEventTable> where,
    _is.OrderByBuilder<SubscriptionEventTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionEventTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<SubscriptionEvent>(
      where: where(SubscriptionEvent.t),
      orderBy: orderBy?.call(SubscriptionEvent.t),
      orderByList: orderByList?.call(SubscriptionEvent.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionEventTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<SubscriptionEvent>(
      where: where?.call(SubscriptionEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SubscriptionEvent] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionEventTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SubscriptionEvent>(
      where: where(SubscriptionEvent.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
