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

abstract class PromoRedemption
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  PromoRedemption._({
    this.id,
    required this.promoCodeId,
    required this.userId,
    this.businessId,
    this.appliedSubscriptionId,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    DateTime? redeemedAt,
  }) : redeemedAt = redeemedAt ?? DateTime.now();

  factory PromoRedemption({
    int? id,
    required int promoCodeId,
    required _is.UuidValue userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  }) = _PromoRedemptionImpl;

  factory PromoRedemption.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoRedemption(
      id: jsonSerialization['id'] as int?,
      promoCodeId: jsonSerialization['promoCodeId'] as int,
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      businessId: jsonSerialization['businessId'] as int?,
      appliedSubscriptionId: jsonSerialization['appliedSubscriptionId'] as int?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      redeemedAt: jsonSerialization['redeemedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['redeemedAt']),
    );
  }

  static final t = PromoRedemptionTable();

  static const db = PromoRedemptionRepository._();

  @override
  int? id;

  int promoCodeId;

  _is.UuidValue userId;

  int? businessId;

  int? appliedSubscriptionId;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  DateTime redeemedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [PromoRedemption]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PromoRedemption copyWith({
    int? id,
    int? promoCodeId,
    _is.UuidValue? userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemption',
      if (id != null) 'id': id,
      'promoCodeId': promoCodeId,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoRedemption',
      if (id != null) 'id': id,
      'promoCodeId': promoCodeId,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      if (appliedSubscriptionId != null)
        'appliedSubscriptionId': appliedSubscriptionId,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      'redeemedAt': redeemedAt.toJson(),
    };
  }

  static PromoRedemptionInclude include() {
    return PromoRedemptionInclude._();
  }

  static PromoRedemptionIncludeList includeList({
    _is.WhereExpressionBuilder<PromoRedemptionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    PromoRedemptionInclude? include,
  }) {
    return PromoRedemptionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoRedemptionImpl extends PromoRedemption {
  _PromoRedemptionImpl({
    int? id,
    required int promoCodeId,
    required _is.UuidValue userId,
    int? businessId,
    int? appliedSubscriptionId,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    DateTime? redeemedAt,
  }) : super._(
         id: id,
         promoCodeId: promoCodeId,
         userId: userId,
         businessId: businessId,
         appliedSubscriptionId: appliedSubscriptionId,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         redeemedAt: redeemedAt,
       );

  /// Returns a shallow copy of this [PromoRedemption]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PromoRedemption copyWith({
    Object? id = _Undefined,
    int? promoCodeId,
    _is.UuidValue? userId,
    Object? businessId = _Undefined,
    Object? appliedSubscriptionId = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    DateTime? redeemedAt,
  }) {
    return PromoRedemption(
      id: id is int? ? id : this.id,
      promoCodeId: promoCodeId ?? this.promoCodeId,
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      appliedSubscriptionId: appliedSubscriptionId is int?
          ? appliedSubscriptionId
          : this.appliedSubscriptionId,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      redeemedAt: redeemedAt ?? this.redeemedAt,
    );
  }
}

class PromoRedemptionUpdateTable extends _is.UpdateTable<PromoRedemptionTable> {
  PromoRedemptionUpdateTable(super.table);

  _is.ColumnValue<int, int> promoCodeId(int value) => _is.ColumnValue(
    table.promoCodeId,
    value,
  );

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<int, int> businessId(int? value) => _is.ColumnValue(
    table.businessId,
    value,
  );

  _is.ColumnValue<int, int> appliedSubscriptionId(int? value) =>
      _is.ColumnValue(
        table.appliedSubscriptionId,
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

  _is.ColumnValue<DateTime, DateTime> redeemedAt(DateTime value) =>
      _is.ColumnValue(
        table.redeemedAt,
        value,
      );
}

class PromoRedemptionTable extends _is.Table<int?> {
  PromoRedemptionTable({super.tableRelation})
    : super(tableName: 'commercial_promo_redemption') {
    updateTable = PromoRedemptionUpdateTable(this);
    promoCodeId = _is.ColumnInt(
      'promoCodeId',
      this,
    );
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    businessId = _is.ColumnInt(
      'businessId',
      this,
    );
    appliedSubscriptionId = _is.ColumnInt(
      'appliedSubscriptionId',
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
    redeemedAt = _is.ColumnDateTime(
      'redeemedAt',
      this,
      hasDefault: true,
    );
  }

  late final PromoRedemptionUpdateTable updateTable;

  late final _is.ColumnInt promoCodeId;

  late final _is.ColumnUuid userId;

  late final _is.ColumnInt businessId;

  late final _is.ColumnInt appliedSubscriptionId;

  late final _is.ColumnString utmSource;

  late final _is.ColumnString utmMedium;

  late final _is.ColumnString utmCampaign;

  late final _is.ColumnDateTime redeemedAt;

  @override
  List<_is.Column> get columns => [
    id,
    promoCodeId,
    userId,
    businessId,
    appliedSubscriptionId,
    utmSource,
    utmMedium,
    utmCampaign,
    redeemedAt,
  ];
}

class PromoRedemptionInclude extends _is.IncludeObject {
  PromoRedemptionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => PromoRedemption.t;
}

class PromoRedemptionIncludeList extends _is.IncludeList {
  PromoRedemptionIncludeList._({
    _is.WhereExpressionBuilder<PromoRedemptionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PromoRedemption.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => PromoRedemption.t;
}

class PromoRedemptionRepository {
  const PromoRedemptionRepository._();

  /// Returns a list of [PromoRedemption]s matching the given query parameters.
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
  Future<List<PromoRedemption>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoRedemptionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PromoRedemption>(
      where: where?.call(PromoRedemption.t),
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PromoRedemption] matching the given query parameters.
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
  Future<PromoRedemption?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoRedemptionTable>? where,
    int? offset,
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PromoRedemption>(
      where: where?.call(PromoRedemption.t),
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PromoRedemption] by its [id] or null if no such row exists.
  Future<PromoRedemption?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PromoRedemption>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PromoRedemption]s in the list and returns the inserted rows.
  ///
  /// The returned [PromoRedemption]s will have their `id` fields set.
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
  Future<List<PromoRedemption>> insert(
    _is.DatabaseSession session,
    List<PromoRedemption> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PromoRedemption>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PromoRedemption] and returns the inserted row.
  ///
  /// The returned [PromoRedemption] will have its `id` field set.
  Future<PromoRedemption> insertRow(
    _is.DatabaseSession session,
    PromoRedemption row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PromoRedemption>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PromoRedemption]s in the list and returns the resulting rows.
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
  /// The returned [PromoRedemption]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoRedemption>> upsert(
    _is.DatabaseSession session,
    List<PromoRedemption> rows, {
    required _is.ColumnSelections<PromoRedemptionTable> conflictColumns,
    _is.ColumnSelections<PromoRedemptionTable>? updateColumns,
    _is.WhereExpressionBuilder<PromoRedemptionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PromoRedemption>(
      rows,
      conflictColumns: conflictColumns(PromoRedemption.t),
      updateColumns: updateColumns?.call(PromoRedemption.t),
      updateWhere: updateWhere?.call(PromoRedemption.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PromoRedemption] and returns the resulting row.
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
  /// The returned [PromoRedemption] will have its `id` field set.
  Future<PromoRedemption?> upsertRow(
    _is.DatabaseSession session,
    PromoRedemption row, {
    required _is.ColumnSelections<PromoRedemptionTable> conflictColumns,
    _is.ColumnSelections<PromoRedemptionTable>? updateColumns,
    _is.WhereExpressionBuilder<PromoRedemptionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PromoRedemption>(
      row,
      conflictColumns: conflictColumns(PromoRedemption.t),
      updateColumns: updateColumns?.call(PromoRedemption.t),
      updateWhere: updateWhere?.call(PromoRedemption.t),
      transaction: transaction,
    );
  }

  /// Updates all [PromoRedemption]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoRedemption>> update(
    _is.DatabaseSession session,
    List<PromoRedemption> rows, {
    _is.ColumnSelections<PromoRedemptionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PromoRedemption>(
      rows,
      columns: columns?.call(PromoRedemption.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PromoRedemption]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PromoRedemption> updateRow(
    _is.DatabaseSession session,
    PromoRedemption row, {
    _is.ColumnSelections<PromoRedemptionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PromoRedemption>(
      row,
      columns: columns?.call(PromoRedemption.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PromoRedemption] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PromoRedemption?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<PromoRedemptionUpdateTable>
    columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PromoRedemption>(
      id,
      columnValues: columnValues(PromoRedemption.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PromoRedemption]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoRedemption>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PromoRedemptionUpdateTable>
    columnValues,
    required _is.WhereExpressionBuilder<PromoRedemptionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PromoRedemption>(
      columnValues: columnValues(PromoRedemption.t.updateTable),
      where: where(PromoRedemption.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PromoRedemption]s in the list and returns the deleted rows.
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
  Future<List<PromoRedemption>> delete(
    _is.DatabaseSession session,
    List<PromoRedemption> rows, {
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PromoRedemption>(
      rows,
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PromoRedemption].
  Future<PromoRedemption> deleteRow(
    _is.DatabaseSession session,
    PromoRedemption row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PromoRedemption>(
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
  Future<List<PromoRedemption>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PromoRedemptionTable> where,
    _is.OrderByBuilder<PromoRedemptionTable>? orderBy,
    _is.OrderByListBuilder<PromoRedemptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PromoRedemption>(
      where: where(PromoRedemption.t),
      orderBy: orderBy?.call(PromoRedemption.t),
      orderByList: orderByList?.call(PromoRedemption.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoRedemptionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PromoRedemption>(
      where: where?.call(PromoRedemption.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PromoRedemption] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PromoRedemptionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PromoRedemption>(
      where: where(PromoRedemption.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
