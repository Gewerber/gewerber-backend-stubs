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

import 'package:gewerber_backend_commercial_server/src/generated/protocol.dart'
    as _int0fvki;
import 'package:serverpod/serverpod.dart' as _is;
import '../../../modules/subscription/models/plan_tier.dart' as _indck975;

abstract class Plan implements _is.TableRow<int?>, _is.ProtocolSerialization {
  Plan._({
    this.id,
    required this.code,
    required this.tier,
    required this.name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    this.paypalProductId,
    this.paypalPlanIdMonthly,
    this.paypalPlanIdAnnual,
    required this.features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : currency = currency ?? 'eur',
       priceMonthlyMinor = priceMonthlyMinor ?? 0,
       priceAnnualMinor = priceAnnualMinor ?? 0,
       isActive = isActive ?? true,
       sortOrder = sortOrder ?? 0,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory Plan({
    int? id,
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    required List<String> features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PlanImpl;

  factory Plan.fromJson(Map<String, dynamic> jsonSerialization) {
    return Plan(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      tier: _indck975.PlanTier.fromJson((jsonSerialization['tier'] as String)),
      name: jsonSerialization['name'] as String,
      currency: jsonSerialization['currency'] as String?,
      priceMonthlyMinor: jsonSerialization['priceMonthlyMinor'] as int?,
      priceAnnualMinor: jsonSerialization['priceAnnualMinor'] as int?,
      paypalProductId: jsonSerialization['paypalProductId'] as String?,
      paypalPlanIdMonthly: jsonSerialization['paypalPlanIdMonthly'] as String?,
      paypalPlanIdAnnual: jsonSerialization['paypalPlanIdAnnual'] as String?,
      features: _int0fvki.Protocol().deserialize<List<String>>(
        jsonSerialization['features'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
      sortOrder: jsonSerialization['sortOrder'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = PlanTable();

  static const db = PlanRepository._();

  @override
  int? id;

  String code;

  _indck975.PlanTier tier;

  String name;

  String currency;

  int priceMonthlyMinor;

  int priceAnnualMinor;

  String? paypalProductId;

  String? paypalPlanIdMonthly;

  String? paypalPlanIdAnnual;

  List<String> features;

  bool isActive;

  int sortOrder;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Plan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Plan copyWith({
    int? id,
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    List<String>? features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.Plan',
      if (id != null) 'id': id,
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      if (paypalProductId != null) 'paypalProductId': paypalProductId,
      if (paypalPlanIdMonthly != null)
        'paypalPlanIdMonthly': paypalPlanIdMonthly,
      if (paypalPlanIdAnnual != null) 'paypalPlanIdAnnual': paypalPlanIdAnnual,
      'features': features.toJson(),
      'isActive': isActive,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.Plan',
      if (id != null) 'id': id,
      'code': code,
      'tier': tier.toJson(),
      'name': name,
      'currency': currency,
      'priceMonthlyMinor': priceMonthlyMinor,
      'priceAnnualMinor': priceAnnualMinor,
      if (paypalProductId != null) 'paypalProductId': paypalProductId,
      if (paypalPlanIdMonthly != null)
        'paypalPlanIdMonthly': paypalPlanIdMonthly,
      if (paypalPlanIdAnnual != null) 'paypalPlanIdAnnual': paypalPlanIdAnnual,
      'features': features.toJson(),
      'isActive': isActive,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PlanInclude include() {
    return PlanInclude._();
  }

  static PlanIncludeList includeList({
    _is.WhereExpressionBuilder<PlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    PlanInclude? include,
  }) {
    return PlanIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlanImpl extends Plan {
  _PlanImpl({
    int? id,
    required String code,
    required _indck975.PlanTier tier,
    required String name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    String? paypalProductId,
    String? paypalPlanIdMonthly,
    String? paypalPlanIdAnnual,
    required List<String> features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         code: code,
         tier: tier,
         name: name,
         currency: currency,
         priceMonthlyMinor: priceMonthlyMinor,
         priceAnnualMinor: priceAnnualMinor,
         paypalProductId: paypalProductId,
         paypalPlanIdMonthly: paypalPlanIdMonthly,
         paypalPlanIdAnnual: paypalPlanIdAnnual,
         features: features,
         isActive: isActive,
         sortOrder: sortOrder,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Plan]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Plan copyWith({
    Object? id = _Undefined,
    String? code,
    _indck975.PlanTier? tier,
    String? name,
    String? currency,
    int? priceMonthlyMinor,
    int? priceAnnualMinor,
    Object? paypalProductId = _Undefined,
    Object? paypalPlanIdMonthly = _Undefined,
    Object? paypalPlanIdAnnual = _Undefined,
    List<String>? features,
    bool? isActive,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Plan(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      tier: tier ?? this.tier,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      priceMonthlyMinor: priceMonthlyMinor ?? this.priceMonthlyMinor,
      priceAnnualMinor: priceAnnualMinor ?? this.priceAnnualMinor,
      paypalProductId: paypalProductId is String?
          ? paypalProductId
          : this.paypalProductId,
      paypalPlanIdMonthly: paypalPlanIdMonthly is String?
          ? paypalPlanIdMonthly
          : this.paypalPlanIdMonthly,
      paypalPlanIdAnnual: paypalPlanIdAnnual is String?
          ? paypalPlanIdAnnual
          : this.paypalPlanIdAnnual,
      features: features ?? this.features.map((e0) => e0).toList(),
      isActive: isActive ?? this.isActive,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PlanUpdateTable extends _is.UpdateTable<PlanTable> {
  PlanUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<_indck975.PlanTier, _indck975.PlanTier> tier(
    _indck975.PlanTier value,
  ) => _is.ColumnValue(
    table.tier,
    value,
  );

  _is.ColumnValue<String, String> name(String value) => _is.ColumnValue(
    table.name,
    value,
  );

  _is.ColumnValue<String, String> currency(String value) => _is.ColumnValue(
    table.currency,
    value,
  );

  _is.ColumnValue<int, int> priceMonthlyMinor(int value) => _is.ColumnValue(
    table.priceMonthlyMinor,
    value,
  );

  _is.ColumnValue<int, int> priceAnnualMinor(int value) => _is.ColumnValue(
    table.priceAnnualMinor,
    value,
  );

  _is.ColumnValue<String, String> paypalProductId(String? value) =>
      _is.ColumnValue(
        table.paypalProductId,
        value,
      );

  _is.ColumnValue<String, String> paypalPlanIdMonthly(String? value) =>
      _is.ColumnValue(
        table.paypalPlanIdMonthly,
        value,
      );

  _is.ColumnValue<String, String> paypalPlanIdAnnual(String? value) =>
      _is.ColumnValue(
        table.paypalPlanIdAnnual,
        value,
      );

  _is.ColumnValue<List<String>, List<String>> features(List<String> value) =>
      _is.ColumnValue(
        table.features,
        value,
      );

  _is.ColumnValue<bool, bool> isActive(bool value) => _is.ColumnValue(
    table.isActive,
    value,
  );

  _is.ColumnValue<int, int> sortOrder(int value) => _is.ColumnValue(
    table.sortOrder,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _is.ColumnValue(
        table.createdAt,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _is.ColumnValue(
        table.updatedAt,
        value,
      );
}

class PlanTable extends _is.Table<int?> {
  PlanTable({super.tableRelation}) : super(tableName: 'commercial_plan') {
    updateTable = PlanUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    tier = _is.ColumnEnum(
      'tier',
      this,
      _is.EnumSerialization.byName,
    );
    name = _is.ColumnString(
      'name',
      this,
    );
    currency = _is.ColumnString(
      'currency',
      this,
      hasDefault: true,
    );
    priceMonthlyMinor = _is.ColumnInt(
      'priceMonthlyMinor',
      this,
      hasDefault: true,
    );
    priceAnnualMinor = _is.ColumnInt(
      'priceAnnualMinor',
      this,
      hasDefault: true,
    );
    paypalProductId = _is.ColumnString(
      'paypalProductId',
      this,
    );
    paypalPlanIdMonthly = _is.ColumnString(
      'paypalPlanIdMonthly',
      this,
    );
    paypalPlanIdAnnual = _is.ColumnString(
      'paypalPlanIdAnnual',
      this,
    );
    features = _is.ColumnSerializable<List<String>>(
      'features',
      this,
    );
    isActive = _is.ColumnBool(
      'isActive',
      this,
      hasDefault: true,
    );
    sortOrder = _is.ColumnInt(
      'sortOrder',
      this,
      hasDefault: true,
    );
    createdAt = _is.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    updatedAt = _is.ColumnDateTime(
      'updatedAt',
      this,
      hasDefault: true,
    );
  }

  late final PlanUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnEnum<_indck975.PlanTier> tier;

  late final _is.ColumnString name;

  late final _is.ColumnString currency;

  late final _is.ColumnInt priceMonthlyMinor;

  late final _is.ColumnInt priceAnnualMinor;

  late final _is.ColumnString paypalProductId;

  late final _is.ColumnString paypalPlanIdMonthly;

  late final _is.ColumnString paypalPlanIdAnnual;

  late final _is.ColumnSerializable<List<String>> features;

  late final _is.ColumnBool isActive;

  late final _is.ColumnInt sortOrder;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    tier,
    name,
    currency,
    priceMonthlyMinor,
    priceAnnualMinor,
    paypalProductId,
    paypalPlanIdMonthly,
    paypalPlanIdAnnual,
    features,
    isActive,
    sortOrder,
    createdAt,
    updatedAt,
  ];
}

class PlanInclude extends _is.IncludeObject {
  PlanInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Plan.t;
}

class PlanIncludeList extends _is.IncludeList {
  PlanIncludeList._({
    _is.WhereExpressionBuilder<PlanTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Plan.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Plan.t;
}

class PlanRepository {
  const PlanRepository._();

  /// Returns a list of [Plan]s matching the given query parameters.
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
  Future<List<Plan>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PlanTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Plan>(
      where: where?.call(Plan.t),
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Plan] matching the given query parameters.
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
  Future<Plan?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PlanTable>? where,
    int? offset,
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Plan>(
      where: where?.call(Plan.t),
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Plan] by its [id] or null if no such row exists.
  Future<Plan?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Plan>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Plan]s in the list and returns the inserted rows.
  ///
  /// The returned [Plan]s will have their `id` fields set.
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
  Future<List<Plan>> insert(
    _is.DatabaseSession session,
    List<Plan> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Plan>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Plan] and returns the inserted row.
  ///
  /// The returned [Plan] will have its `id` field set.
  Future<Plan> insertRow(
    _is.DatabaseSession session,
    Plan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Plan>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Plan]s in the list and returns the resulting rows.
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
  /// The returned [Plan]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Plan>> upsert(
    _is.DatabaseSession session,
    List<Plan> rows, {
    required _is.ColumnSelections<PlanTable> conflictColumns,
    _is.ColumnSelections<PlanTable>? updateColumns,
    _is.WhereExpressionBuilder<PlanTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Plan>(
      rows,
      conflictColumns: conflictColumns(Plan.t),
      updateColumns: updateColumns?.call(Plan.t),
      updateWhere: updateWhere?.call(Plan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Plan] and returns the resulting row.
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
  /// The returned [Plan] will have its `id` field set.
  Future<Plan?> upsertRow(
    _is.DatabaseSession session,
    Plan row, {
    required _is.ColumnSelections<PlanTable> conflictColumns,
    _is.ColumnSelections<PlanTable>? updateColumns,
    _is.WhereExpressionBuilder<PlanTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Plan>(
      row,
      conflictColumns: conflictColumns(Plan.t),
      updateColumns: updateColumns?.call(Plan.t),
      updateWhere: updateWhere?.call(Plan.t),
      transaction: transaction,
    );
  }

  /// Updates all [Plan]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Plan>> update(
    _is.DatabaseSession session,
    List<Plan> rows, {
    _is.ColumnSelections<PlanTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Plan>(
      rows,
      columns: columns?.call(Plan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Plan]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Plan> updateRow(
    _is.DatabaseSession session,
    Plan row, {
    _is.ColumnSelections<PlanTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Plan>(
      row,
      columns: columns?.call(Plan.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Plan] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Plan?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<PlanUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Plan>(
      id,
      columnValues: columnValues(Plan.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Plan]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Plan>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PlanUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<PlanTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Plan>(
      columnValues: columnValues(Plan.t.updateTable),
      where: where(Plan.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Plan]s in the list and returns the deleted rows.
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
  Future<List<Plan>> delete(
    _is.DatabaseSession session,
    List<Plan> rows, {
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Plan>(
      rows,
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Plan].
  Future<Plan> deleteRow(
    _is.DatabaseSession session,
    Plan row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Plan>(
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
  Future<List<Plan>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PlanTable> where,
    _is.OrderByBuilder<PlanTable>? orderBy,
    _is.OrderByListBuilder<PlanTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Plan>(
      where: where(Plan.t),
      orderBy: orderBy?.call(Plan.t),
      orderByList: orderByList?.call(Plan.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PlanTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Plan>(
      where: where?.call(Plan.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Plan] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PlanTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Plan>(
      where: where(Plan.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
