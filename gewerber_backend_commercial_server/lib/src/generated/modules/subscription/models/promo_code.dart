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
import '../../../modules/subscription/models/promo_code_kind.dart' as _iaan25w0;
import '../../../modules/subscription/models/promo_code_status.dart'
    as _i72owr20;
import '../../../modules/subscription/models/promo_discount_type.dart'
    as _iduof0ej;

abstract class PromoCode
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  PromoCode._({
    this.id,
    required this.code,
    required this.kind,
    this.discountType,
    this.discountPercent,
    this.discountMinor,
    this.trialDays,
    this.planId,
    this.maxRedemptions,
    int? perUserLimit,
    this.validFrom,
    this.validUntil,
    this.campaign,
    this.ref,
    this.note,
    _i72owr20.PromoCodeStatus? status,
    this.paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : perUserLimit = perUserLimit ?? 1,
       status = status ?? _i72owr20.PromoCodeStatus.active,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory PromoCode({
    int? id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PromoCodeImpl;

  factory PromoCode.fromJson(Map<String, dynamic> jsonSerialization) {
    return PromoCode(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      kind: _iaan25w0.PromoCodeKind.fromJson(
        (jsonSerialization['kind'] as String),
      ),
      discountType: jsonSerialization['discountType'] == null
          ? null
          : _iduof0ej.PromoDiscountType.fromJson(
              (jsonSerialization['discountType'] as String),
            ),
      discountPercent: jsonSerialization['discountPercent'] as int?,
      discountMinor: jsonSerialization['discountMinor'] as int?,
      trialDays: jsonSerialization['trialDays'] as int?,
      planId: jsonSerialization['planId'] as int?,
      maxRedemptions: jsonSerialization['maxRedemptions'] as int?,
      perUserLimit: jsonSerialization['perUserLimit'] as int?,
      validFrom: jsonSerialization['validFrom'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['validFrom']),
      validUntil: jsonSerialization['validUntil'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['validUntil']),
      campaign: jsonSerialization['campaign'] as String?,
      ref: jsonSerialization['ref'] as String?,
      note: jsonSerialization['note'] as String?,
      status: jsonSerialization['status'] == null
          ? null
          : _i72owr20.PromoCodeStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      paypalPlanVariantId: jsonSerialization['paypalPlanVariantId'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = PromoCodeTable();

  static const db = PromoCodeRepository._();

  @override
  int? id;

  String code;

  _iaan25w0.PromoCodeKind kind;

  _iduof0ej.PromoDiscountType? discountType;

  int? discountPercent;

  int? discountMinor;

  int? trialDays;

  int? planId;

  int? maxRedemptions;

  int perUserLimit;

  DateTime? validFrom;

  DateTime? validUntil;

  String? campaign;

  String? ref;

  String? note;

  _i72owr20.PromoCodeStatus status;

  String? paypalPlanVariantId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [PromoCode]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  PromoCode copyWith({
    int? id,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoCode',
      if (id != null) 'id': id,
      'code': code,
      'kind': kind.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planId != null) 'planId': planId,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      'status': status.toJson(),
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PromoCode',
      if (id != null) 'id': id,
      'code': code,
      'kind': kind.toJson(),
      if (discountType != null) 'discountType': discountType?.toJson(),
      if (discountPercent != null) 'discountPercent': discountPercent,
      if (discountMinor != null) 'discountMinor': discountMinor,
      if (trialDays != null) 'trialDays': trialDays,
      if (planId != null) 'planId': planId,
      if (maxRedemptions != null) 'maxRedemptions': maxRedemptions,
      'perUserLimit': perUserLimit,
      if (validFrom != null) 'validFrom': validFrom?.toJson(),
      if (validUntil != null) 'validUntil': validUntil?.toJson(),
      if (campaign != null) 'campaign': campaign,
      if (ref != null) 'ref': ref,
      if (note != null) 'note': note,
      'status': status.toJson(),
      if (paypalPlanVariantId != null)
        'paypalPlanVariantId': paypalPlanVariantId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static PromoCodeInclude include() {
    return PromoCodeInclude._();
  }

  static PromoCodeIncludeList includeList({
    _is.WhereExpressionBuilder<PromoCodeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    PromoCodeInclude? include,
  }) {
    return PromoCodeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PromoCodeImpl extends PromoCode {
  _PromoCodeImpl({
    int? id,
    required String code,
    required _iaan25w0.PromoCodeKind kind,
    _iduof0ej.PromoDiscountType? discountType,
    int? discountPercent,
    int? discountMinor,
    int? trialDays,
    int? planId,
    int? maxRedemptions,
    int? perUserLimit,
    DateTime? validFrom,
    DateTime? validUntil,
    String? campaign,
    String? ref,
    String? note,
    _i72owr20.PromoCodeStatus? status,
    String? paypalPlanVariantId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         code: code,
         kind: kind,
         discountType: discountType,
         discountPercent: discountPercent,
         discountMinor: discountMinor,
         trialDays: trialDays,
         planId: planId,
         maxRedemptions: maxRedemptions,
         perUserLimit: perUserLimit,
         validFrom: validFrom,
         validUntil: validUntil,
         campaign: campaign,
         ref: ref,
         note: note,
         status: status,
         paypalPlanVariantId: paypalPlanVariantId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [PromoCode]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  PromoCode copyWith({
    Object? id = _Undefined,
    String? code,
    _iaan25w0.PromoCodeKind? kind,
    Object? discountType = _Undefined,
    Object? discountPercent = _Undefined,
    Object? discountMinor = _Undefined,
    Object? trialDays = _Undefined,
    Object? planId = _Undefined,
    Object? maxRedemptions = _Undefined,
    int? perUserLimit,
    Object? validFrom = _Undefined,
    Object? validUntil = _Undefined,
    Object? campaign = _Undefined,
    Object? ref = _Undefined,
    Object? note = _Undefined,
    _i72owr20.PromoCodeStatus? status,
    Object? paypalPlanVariantId = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PromoCode(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      kind: kind ?? this.kind,
      discountType: discountType is _iduof0ej.PromoDiscountType?
          ? discountType
          : this.discountType,
      discountPercent: discountPercent is int?
          ? discountPercent
          : this.discountPercent,
      discountMinor: discountMinor is int? ? discountMinor : this.discountMinor,
      trialDays: trialDays is int? ? trialDays : this.trialDays,
      planId: planId is int? ? planId : this.planId,
      maxRedemptions: maxRedemptions is int?
          ? maxRedemptions
          : this.maxRedemptions,
      perUserLimit: perUserLimit ?? this.perUserLimit,
      validFrom: validFrom is DateTime? ? validFrom : this.validFrom,
      validUntil: validUntil is DateTime? ? validUntil : this.validUntil,
      campaign: campaign is String? ? campaign : this.campaign,
      ref: ref is String? ? ref : this.ref,
      note: note is String? ? note : this.note,
      status: status ?? this.status,
      paypalPlanVariantId: paypalPlanVariantId is String?
          ? paypalPlanVariantId
          : this.paypalPlanVariantId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class PromoCodeUpdateTable extends _is.UpdateTable<PromoCodeTable> {
  PromoCodeUpdateTable(super.table);

  _is.ColumnValue<String, String> code(String value) => _is.ColumnValue(
    table.code,
    value,
  );

  _is.ColumnValue<_iaan25w0.PromoCodeKind, _iaan25w0.PromoCodeKind> kind(
    _iaan25w0.PromoCodeKind value,
  ) => _is.ColumnValue(
    table.kind,
    value,
  );

  _is.ColumnValue<_iduof0ej.PromoDiscountType, _iduof0ej.PromoDiscountType>
  discountType(_iduof0ej.PromoDiscountType? value) => _is.ColumnValue(
    table.discountType,
    value,
  );

  _is.ColumnValue<int, int> discountPercent(int? value) => _is.ColumnValue(
    table.discountPercent,
    value,
  );

  _is.ColumnValue<int, int> discountMinor(int? value) => _is.ColumnValue(
    table.discountMinor,
    value,
  );

  _is.ColumnValue<int, int> trialDays(int? value) => _is.ColumnValue(
    table.trialDays,
    value,
  );

  _is.ColumnValue<int, int> planId(int? value) => _is.ColumnValue(
    table.planId,
    value,
  );

  _is.ColumnValue<int, int> maxRedemptions(int? value) => _is.ColumnValue(
    table.maxRedemptions,
    value,
  );

  _is.ColumnValue<int, int> perUserLimit(int value) => _is.ColumnValue(
    table.perUserLimit,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> validFrom(DateTime? value) =>
      _is.ColumnValue(
        table.validFrom,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> validUntil(DateTime? value) =>
      _is.ColumnValue(
        table.validUntil,
        value,
      );

  _is.ColumnValue<String, String> campaign(String? value) => _is.ColumnValue(
    table.campaign,
    value,
  );

  _is.ColumnValue<String, String> ref(String? value) => _is.ColumnValue(
    table.ref,
    value,
  );

  _is.ColumnValue<String, String> note(String? value) => _is.ColumnValue(
    table.note,
    value,
  );

  _is.ColumnValue<_i72owr20.PromoCodeStatus, _i72owr20.PromoCodeStatus> status(
    _i72owr20.PromoCodeStatus value,
  ) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<String, String> paypalPlanVariantId(String? value) =>
      _is.ColumnValue(
        table.paypalPlanVariantId,
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

class PromoCodeTable extends _is.Table<int?> {
  PromoCodeTable({super.tableRelation})
    : super(tableName: 'commercial_promo_code') {
    updateTable = PromoCodeUpdateTable(this);
    code = _is.ColumnString(
      'code',
      this,
    );
    kind = _is.ColumnEnum(
      'kind',
      this,
      _is.EnumSerialization.byName,
    );
    discountType = _is.ColumnEnum(
      'discountType',
      this,
      _is.EnumSerialization.byName,
    );
    discountPercent = _is.ColumnInt(
      'discountPercent',
      this,
    );
    discountMinor = _is.ColumnInt(
      'discountMinor',
      this,
    );
    trialDays = _is.ColumnInt(
      'trialDays',
      this,
    );
    planId = _is.ColumnInt(
      'planId',
      this,
    );
    maxRedemptions = _is.ColumnInt(
      'maxRedemptions',
      this,
    );
    perUserLimit = _is.ColumnInt(
      'perUserLimit',
      this,
      hasDefault: true,
    );
    validFrom = _is.ColumnDateTime(
      'validFrom',
      this,
    );
    validUntil = _is.ColumnDateTime(
      'validUntil',
      this,
    );
    campaign = _is.ColumnString(
      'campaign',
      this,
    );
    ref = _is.ColumnString(
      'ref',
      this,
    );
    note = _is.ColumnString(
      'note',
      this,
    );
    status = _is.ColumnEnum(
      'status',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    paypalPlanVariantId = _is.ColumnString(
      'paypalPlanVariantId',
      this,
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

  late final PromoCodeUpdateTable updateTable;

  late final _is.ColumnString code;

  late final _is.ColumnEnum<_iaan25w0.PromoCodeKind> kind;

  late final _is.ColumnEnum<_iduof0ej.PromoDiscountType> discountType;

  late final _is.ColumnInt discountPercent;

  late final _is.ColumnInt discountMinor;

  late final _is.ColumnInt trialDays;

  late final _is.ColumnInt planId;

  late final _is.ColumnInt maxRedemptions;

  late final _is.ColumnInt perUserLimit;

  late final _is.ColumnDateTime validFrom;

  late final _is.ColumnDateTime validUntil;

  late final _is.ColumnString campaign;

  late final _is.ColumnString ref;

  late final _is.ColumnString note;

  late final _is.ColumnEnum<_i72owr20.PromoCodeStatus> status;

  late final _is.ColumnString paypalPlanVariantId;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    code,
    kind,
    discountType,
    discountPercent,
    discountMinor,
    trialDays,
    planId,
    maxRedemptions,
    perUserLimit,
    validFrom,
    validUntil,
    campaign,
    ref,
    note,
    status,
    paypalPlanVariantId,
    createdAt,
    updatedAt,
  ];
}

class PromoCodeInclude extends _is.IncludeObject {
  PromoCodeInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => PromoCode.t;
}

class PromoCodeIncludeList extends _is.IncludeList {
  PromoCodeIncludeList._({
    _is.WhereExpressionBuilder<PromoCodeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PromoCode.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => PromoCode.t;
}

class PromoCodeRepository {
  const PromoCodeRepository._();

  /// Returns a list of [PromoCode]s matching the given query parameters.
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
  Future<List<PromoCode>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoCodeTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PromoCode>(
      where: where?.call(PromoCode.t),
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PromoCode] matching the given query parameters.
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
  Future<PromoCode?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoCodeTable>? where,
    int? offset,
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PromoCode>(
      where: where?.call(PromoCode.t),
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PromoCode] by its [id] or null if no such row exists.
  Future<PromoCode?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PromoCode>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PromoCode]s in the list and returns the inserted rows.
  ///
  /// The returned [PromoCode]s will have their `id` fields set.
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
  Future<List<PromoCode>> insert(
    _is.DatabaseSession session,
    List<PromoCode> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<PromoCode>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [PromoCode] and returns the inserted row.
  ///
  /// The returned [PromoCode] will have its `id` field set.
  Future<PromoCode> insertRow(
    _is.DatabaseSession session,
    PromoCode row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<PromoCode>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [PromoCode]s in the list and returns the resulting rows.
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
  /// The returned [PromoCode]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoCode>> upsert(
    _is.DatabaseSession session,
    List<PromoCode> rows, {
    required _is.ColumnSelections<PromoCodeTable> conflictColumns,
    _is.ColumnSelections<PromoCodeTable>? updateColumns,
    _is.WhereExpressionBuilder<PromoCodeTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<PromoCode>(
      rows,
      conflictColumns: conflictColumns(PromoCode.t),
      updateColumns: updateColumns?.call(PromoCode.t),
      updateWhere: updateWhere?.call(PromoCode.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [PromoCode] and returns the resulting row.
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
  /// The returned [PromoCode] will have its `id` field set.
  Future<PromoCode?> upsertRow(
    _is.DatabaseSession session,
    PromoCode row, {
    required _is.ColumnSelections<PromoCodeTable> conflictColumns,
    _is.ColumnSelections<PromoCodeTable>? updateColumns,
    _is.WhereExpressionBuilder<PromoCodeTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<PromoCode>(
      row,
      conflictColumns: conflictColumns(PromoCode.t),
      updateColumns: updateColumns?.call(PromoCode.t),
      updateWhere: updateWhere?.call(PromoCode.t),
      transaction: transaction,
    );
  }

  /// Updates all [PromoCode]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoCode>> update(
    _is.DatabaseSession session,
    List<PromoCode> rows, {
    _is.ColumnSelections<PromoCodeTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<PromoCode>(
      rows,
      columns: columns?.call(PromoCode.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [PromoCode]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PromoCode> updateRow(
    _is.DatabaseSession session,
    PromoCode row, {
    _is.ColumnSelections<PromoCodeTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<PromoCode>(
      row,
      columns: columns?.call(PromoCode.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PromoCode] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PromoCode?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<PromoCodeUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<PromoCode>(
      id,
      columnValues: columnValues(PromoCode.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PromoCode]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<PromoCode>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<PromoCodeUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<PromoCodeTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<PromoCode>(
      columnValues: columnValues(PromoCode.t.updateTable),
      where: where(PromoCode.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [PromoCode]s in the list and returns the deleted rows.
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
  Future<List<PromoCode>> delete(
    _is.DatabaseSession session,
    List<PromoCode> rows, {
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<PromoCode>(
      rows,
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [PromoCode].
  Future<PromoCode> deleteRow(
    _is.DatabaseSession session,
    PromoCode row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PromoCode>(
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
  Future<List<PromoCode>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PromoCodeTable> where,
    _is.OrderByBuilder<PromoCodeTable>? orderBy,
    _is.OrderByListBuilder<PromoCodeTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<PromoCode>(
      where: where(PromoCode.t),
      orderBy: orderBy?.call(PromoCode.t),
      orderByList: orderByList?.call(PromoCode.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<PromoCodeTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<PromoCode>(
      where: where?.call(PromoCode.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PromoCode] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<PromoCodeTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PromoCode>(
      where: where(PromoCode.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
