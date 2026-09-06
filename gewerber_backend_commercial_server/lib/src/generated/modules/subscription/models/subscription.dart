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
import '../../../modules/subscription/models/subscription_billing_cycle.dart'
    as _i8537g6n;
import '../../../modules/subscription/models/subscription_status.dart'
    as _ixqg6znr;

abstract class Subscription
    implements _is.TableRow<int?>, _is.ProtocolSerialization {
  Subscription._({
    this.id,
    required this.userId,
    this.businessId,
    required this.planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    this.trialEndsAt,
    bool? cancelAtPeriodEnd,
    this.canceledAt,
    this.paypalSubscriptionId,
    this.paypalPayerId,
    this.appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : status = status ?? _ixqg6znr.SubscriptionStatus.trialing,
       billingCycle =
           billingCycle ?? _i8537g6n.SubscriptionBillingCycle.monthly,
       currentPeriodStart = currentPeriodStart ?? DateTime.now(),
       currentPeriodEnd = currentPeriodEnd ?? DateTime.now(),
       cancelAtPeriodEnd = cancelAtPeriodEnd ?? false,
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  factory Subscription({
    int? id,
    required _is.UuidValue userId,
    int? businessId,
    required int planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SubscriptionImpl;

  factory Subscription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Subscription(
      id: jsonSerialization['id'] as int?,
      userId: _is.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      businessId: jsonSerialization['businessId'] as int?,
      planId: jsonSerialization['planId'] as int,
      status: jsonSerialization['status'] == null
          ? null
          : _ixqg6znr.SubscriptionStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      billingCycle: jsonSerialization['billingCycle'] == null
          ? null
          : _i8537g6n.SubscriptionBillingCycle.fromJson(
              (jsonSerialization['billingCycle'] as String),
            ),
      currentPeriodStart: jsonSerialization['currentPeriodStart'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['currentPeriodStart'],
            ),
      currentPeriodEnd: jsonSerialization['currentPeriodEnd'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['currentPeriodEnd'],
            ),
      trialEndsAt: jsonSerialization['trialEndsAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(
              jsonSerialization['trialEndsAt'],
            ),
      cancelAtPeriodEnd: jsonSerialization['cancelAtPeriodEnd'] == null
          ? null
          : _is.BoolJsonExtension.fromJson(
              jsonSerialization['cancelAtPeriodEnd'],
            ),
      canceledAt: jsonSerialization['canceledAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['canceledAt']),
      paypalSubscriptionId:
          jsonSerialization['paypalSubscriptionId'] as String?,
      paypalPayerId: jsonSerialization['paypalPayerId'] as String?,
      appliedPromoCodeId: jsonSerialization['appliedPromoCodeId'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _is.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = SubscriptionTable();

  static const db = SubscriptionRepository._();

  @override
  int? id;

  _is.UuidValue userId;

  int? businessId;

  int planId;

  _ixqg6znr.SubscriptionStatus status;

  _i8537g6n.SubscriptionBillingCycle billingCycle;

  DateTime currentPeriodStart;

  DateTime currentPeriodEnd;

  DateTime? trialEndsAt;

  bool cancelAtPeriodEnd;

  DateTime? canceledAt;

  String? paypalSubscriptionId;

  String? paypalPayerId;

  int? appliedPromoCodeId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _is.Table<int?> get table => t;

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  Subscription copyWith({
    int? id,
    _is.UuidValue? userId,
    int? businessId,
    int? planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.Subscription',
      if (id != null) 'id': id,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      'planId': planId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (paypalPayerId != null) 'paypalPayerId': paypalPayerId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.Subscription',
      if (id != null) 'id': id,
      'userId': userId.toJson(),
      if (businessId != null) 'businessId': businessId,
      'planId': planId,
      'status': status.toJson(),
      'billingCycle': billingCycle.toJson(),
      'currentPeriodStart': currentPeriodStart.toJson(),
      'currentPeriodEnd': currentPeriodEnd.toJson(),
      if (trialEndsAt != null) 'trialEndsAt': trialEndsAt?.toJson(),
      'cancelAtPeriodEnd': cancelAtPeriodEnd,
      if (canceledAt != null) 'canceledAt': canceledAt?.toJson(),
      if (paypalSubscriptionId != null)
        'paypalSubscriptionId': paypalSubscriptionId,
      if (paypalPayerId != null) 'paypalPayerId': paypalPayerId,
      if (appliedPromoCodeId != null) 'appliedPromoCodeId': appliedPromoCodeId,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static SubscriptionInclude include() {
    return SubscriptionInclude._();
  }

  static SubscriptionIncludeList includeList({
    _is.WhereExpressionBuilder<SubscriptionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    SubscriptionInclude? include,
  }) {
    return SubscriptionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SubscriptionImpl extends Subscription {
  _SubscriptionImpl({
    int? id,
    required _is.UuidValue userId,
    int? businessId,
    required int planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    DateTime? trialEndsAt,
    bool? cancelAtPeriodEnd,
    DateTime? canceledAt,
    String? paypalSubscriptionId,
    String? paypalPayerId,
    int? appliedPromoCodeId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         businessId: businessId,
         planId: planId,
         status: status,
         billingCycle: billingCycle,
         currentPeriodStart: currentPeriodStart,
         currentPeriodEnd: currentPeriodEnd,
         trialEndsAt: trialEndsAt,
         cancelAtPeriodEnd: cancelAtPeriodEnd,
         canceledAt: canceledAt,
         paypalSubscriptionId: paypalSubscriptionId,
         paypalPayerId: paypalPayerId,
         appliedPromoCodeId: appliedPromoCodeId,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Subscription]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  Subscription copyWith({
    Object? id = _Undefined,
    _is.UuidValue? userId,
    Object? businessId = _Undefined,
    int? planId,
    _ixqg6znr.SubscriptionStatus? status,
    _i8537g6n.SubscriptionBillingCycle? billingCycle,
    DateTime? currentPeriodStart,
    DateTime? currentPeriodEnd,
    Object? trialEndsAt = _Undefined,
    bool? cancelAtPeriodEnd,
    Object? canceledAt = _Undefined,
    Object? paypalSubscriptionId = _Undefined,
    Object? paypalPayerId = _Undefined,
    Object? appliedPromoCodeId = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Subscription(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      businessId: businessId is int? ? businessId : this.businessId,
      planId: planId ?? this.planId,
      status: status ?? this.status,
      billingCycle: billingCycle ?? this.billingCycle,
      currentPeriodStart: currentPeriodStart ?? this.currentPeriodStart,
      currentPeriodEnd: currentPeriodEnd ?? this.currentPeriodEnd,
      trialEndsAt: trialEndsAt is DateTime? ? trialEndsAt : this.trialEndsAt,
      cancelAtPeriodEnd: cancelAtPeriodEnd ?? this.cancelAtPeriodEnd,
      canceledAt: canceledAt is DateTime? ? canceledAt : this.canceledAt,
      paypalSubscriptionId: paypalSubscriptionId is String?
          ? paypalSubscriptionId
          : this.paypalSubscriptionId,
      paypalPayerId: paypalPayerId is String?
          ? paypalPayerId
          : this.paypalPayerId,
      appliedPromoCodeId: appliedPromoCodeId is int?
          ? appliedPromoCodeId
          : this.appliedPromoCodeId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class SubscriptionUpdateTable extends _is.UpdateTable<SubscriptionTable> {
  SubscriptionUpdateTable(super.table);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> userId(_is.UuidValue value) =>
      _is.ColumnValue(
        table.userId,
        value,
      );

  _is.ColumnValue<int, int> businessId(int? value) => _is.ColumnValue(
    table.businessId,
    value,
  );

  _is.ColumnValue<int, int> planId(int value) => _is.ColumnValue(
    table.planId,
    value,
  );

  _is.ColumnValue<_ixqg6znr.SubscriptionStatus, _ixqg6znr.SubscriptionStatus>
  status(_ixqg6znr.SubscriptionStatus value) => _is.ColumnValue(
    table.status,
    value,
  );

  _is.ColumnValue<
    _i8537g6n.SubscriptionBillingCycle,
    _i8537g6n.SubscriptionBillingCycle
  >
  billingCycle(_i8537g6n.SubscriptionBillingCycle value) => _is.ColumnValue(
    table.billingCycle,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> currentPeriodStart(DateTime value) =>
      _is.ColumnValue(
        table.currentPeriodStart,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> currentPeriodEnd(DateTime value) =>
      _is.ColumnValue(
        table.currentPeriodEnd,
        value,
      );

  _is.ColumnValue<DateTime, DateTime> trialEndsAt(DateTime? value) =>
      _is.ColumnValue(
        table.trialEndsAt,
        value,
      );

  _is.ColumnValue<bool, bool> cancelAtPeriodEnd(bool value) => _is.ColumnValue(
    table.cancelAtPeriodEnd,
    value,
  );

  _is.ColumnValue<DateTime, DateTime> canceledAt(DateTime? value) =>
      _is.ColumnValue(
        table.canceledAt,
        value,
      );

  _is.ColumnValue<String, String> paypalSubscriptionId(String? value) =>
      _is.ColumnValue(
        table.paypalSubscriptionId,
        value,
      );

  _is.ColumnValue<String, String> paypalPayerId(String? value) =>
      _is.ColumnValue(
        table.paypalPayerId,
        value,
      );

  _is.ColumnValue<int, int> appliedPromoCodeId(int? value) => _is.ColumnValue(
    table.appliedPromoCodeId,
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

class SubscriptionTable extends _is.Table<int?> {
  SubscriptionTable({super.tableRelation})
    : super(tableName: 'commercial_subscription') {
    updateTable = SubscriptionUpdateTable(this);
    userId = _is.ColumnUuid(
      'userId',
      this,
    );
    businessId = _is.ColumnInt(
      'businessId',
      this,
    );
    planId = _is.ColumnInt(
      'planId',
      this,
    );
    status = _is.ColumnEnum(
      'status',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    billingCycle = _is.ColumnEnum(
      'billingCycle',
      this,
      _is.EnumSerialization.byName,
      hasDefault: true,
    );
    currentPeriodStart = _is.ColumnDateTime(
      'currentPeriodStart',
      this,
      hasDefault: true,
    );
    currentPeriodEnd = _is.ColumnDateTime(
      'currentPeriodEnd',
      this,
      hasDefault: true,
    );
    trialEndsAt = _is.ColumnDateTime(
      'trialEndsAt',
      this,
    );
    cancelAtPeriodEnd = _is.ColumnBool(
      'cancelAtPeriodEnd',
      this,
      hasDefault: true,
    );
    canceledAt = _is.ColumnDateTime(
      'canceledAt',
      this,
    );
    paypalSubscriptionId = _is.ColumnString(
      'paypalSubscriptionId',
      this,
    );
    paypalPayerId = _is.ColumnString(
      'paypalPayerId',
      this,
    );
    appliedPromoCodeId = _is.ColumnInt(
      'appliedPromoCodeId',
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

  late final SubscriptionUpdateTable updateTable;

  late final _is.ColumnUuid userId;

  late final _is.ColumnInt businessId;

  late final _is.ColumnInt planId;

  late final _is.ColumnEnum<_ixqg6znr.SubscriptionStatus> status;

  late final _is.ColumnEnum<_i8537g6n.SubscriptionBillingCycle> billingCycle;

  late final _is.ColumnDateTime currentPeriodStart;

  late final _is.ColumnDateTime currentPeriodEnd;

  late final _is.ColumnDateTime trialEndsAt;

  late final _is.ColumnBool cancelAtPeriodEnd;

  late final _is.ColumnDateTime canceledAt;

  late final _is.ColumnString paypalSubscriptionId;

  late final _is.ColumnString paypalPayerId;

  late final _is.ColumnInt appliedPromoCodeId;

  late final _is.ColumnDateTime createdAt;

  late final _is.ColumnDateTime updatedAt;

  @override
  List<_is.Column> get columns => [
    id,
    userId,
    businessId,
    planId,
    status,
    billingCycle,
    currentPeriodStart,
    currentPeriodEnd,
    trialEndsAt,
    cancelAtPeriodEnd,
    canceledAt,
    paypalSubscriptionId,
    paypalPayerId,
    appliedPromoCodeId,
    createdAt,
    updatedAt,
  ];
}

class SubscriptionInclude extends _is.IncludeObject {
  SubscriptionInclude._();

  @override
  Map<String, _is.Include?> get includes => {};

  @override
  _is.Table<int?> get table => Subscription.t;
}

class SubscriptionIncludeList extends _is.IncludeList {
  SubscriptionIncludeList._({
    _is.WhereExpressionBuilder<SubscriptionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Subscription.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<int?> get table => Subscription.t;
}

class SubscriptionRepository {
  const SubscriptionRepository._();

  /// Returns a list of [Subscription]s matching the given query parameters.
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
  Future<List<Subscription>> find(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Subscription>(
      where: where?.call(Subscription.t),
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Subscription] matching the given query parameters.
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
  Future<Subscription?> findFirstRow(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionTable>? where,
    int? offset,
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Subscription>(
      where: where?.call(Subscription.t),
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Subscription] by its [id] or null if no such row exists.
  Future<Subscription?> findById(
    _is.DatabaseSession session,
    int id, {
    _is.Transaction? transaction,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Subscription>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Subscription]s in the list and returns the inserted rows.
  ///
  /// The returned [Subscription]s will have their `id` fields set.
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
  Future<List<Subscription>> insert(
    _is.DatabaseSession session,
    List<Subscription> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<Subscription>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [Subscription] and returns the inserted row.
  ///
  /// The returned [Subscription] will have its `id` field set.
  Future<Subscription> insertRow(
    _is.DatabaseSession session,
    Subscription row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<Subscription>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [Subscription]s in the list and returns the resulting rows.
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
  /// The returned [Subscription]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Subscription>> upsert(
    _is.DatabaseSession session,
    List<Subscription> rows, {
    required _is.ColumnSelections<SubscriptionTable> conflictColumns,
    _is.ColumnSelections<SubscriptionTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<Subscription>(
      rows,
      conflictColumns: conflictColumns(Subscription.t),
      updateColumns: updateColumns?.call(Subscription.t),
      updateWhere: updateWhere?.call(Subscription.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [Subscription] and returns the resulting row.
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
  /// The returned [Subscription] will have its `id` field set.
  Future<Subscription?> upsertRow(
    _is.DatabaseSession session,
    Subscription row, {
    required _is.ColumnSelections<SubscriptionTable> conflictColumns,
    _is.ColumnSelections<SubscriptionTable>? updateColumns,
    _is.WhereExpressionBuilder<SubscriptionTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<Subscription>(
      row,
      conflictColumns: conflictColumns(Subscription.t),
      updateColumns: updateColumns?.call(Subscription.t),
      updateWhere: updateWhere?.call(Subscription.t),
      transaction: transaction,
    );
  }

  /// Updates all [Subscription]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Subscription>> update(
    _is.DatabaseSession session,
    List<Subscription> rows, {
    _is.ColumnSelections<SubscriptionTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<Subscription>(
      rows,
      columns: columns?.call(Subscription.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [Subscription]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Subscription> updateRow(
    _is.DatabaseSession session,
    Subscription row, {
    _is.ColumnSelections<SubscriptionTable>? columns,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateRow<Subscription>(
      row,
      columns: columns?.call(Subscription.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Subscription] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Subscription?> updateById(
    _is.DatabaseSession session,
    int id, {
    required _is.ColumnValueListBuilder<SubscriptionUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<Subscription>(
      id,
      columnValues: columnValues(Subscription.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Subscription]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<Subscription>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<SubscriptionUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<SubscriptionTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<Subscription>(
      columnValues: columnValues(Subscription.t.updateTable),
      where: where(Subscription.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [Subscription]s in the list and returns the deleted rows.
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
  Future<List<Subscription>> delete(
    _is.DatabaseSession session,
    List<Subscription> rows, {
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<Subscription>(
      rows,
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [Subscription].
  Future<Subscription> deleteRow(
    _is.DatabaseSession session,
    Subscription row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Subscription>(
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
  Future<List<Subscription>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionTable> where,
    _is.OrderByBuilder<SubscriptionTable>? orderBy,
    _is.OrderByListBuilder<SubscriptionTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<Subscription>(
      where: where(Subscription.t),
      orderBy: orderBy?.call(Subscription.t),
      orderByList: orderByList?.call(Subscription.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<SubscriptionTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<Subscription>(
      where: where?.call(Subscription.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Subscription] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<SubscriptionTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Subscription>(
      where: where(Subscription.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
