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

import 'package:serverpod_client/serverpod_client.dart' as _isc;
import '../../../modules/subscription/models/paypal_event_status.dart'
    as _iy95ofzk;

abstract class PaypalEvent
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  PaypalEvent._({
    this.id,
    required this.eventId,
    required this.type,
    required this.payload,
    _iy95ofzk.PaypalEventStatus? status,
    this.processError,
    DateTime? receivedAt,
    this.processedAt,
  }) : status = status ?? _iy95ofzk.PaypalEventStatus.received,
       receivedAt = receivedAt ?? DateTime.now();

  factory PaypalEvent({
    int? id,
    required String eventId,
    required String type,
    required String payload,
    _iy95ofzk.PaypalEventStatus? status,
    String? processError,
    DateTime? receivedAt,
    DateTime? processedAt,
  }) = _PaypalEventImpl;

  factory PaypalEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return PaypalEvent(
      id: jsonSerialization['id'] as int?,
      eventId: jsonSerialization['eventId'] as String,
      type: jsonSerialization['type'] as String,
      payload: jsonSerialization['payload'] as String,
      status: jsonSerialization['status'] == null
          ? null
          : _iy95ofzk.PaypalEventStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      processError: jsonSerialization['processError'] as String?,
      receivedAt: jsonSerialization['receivedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['receivedAt'],
            ),
      processedAt: jsonSerialization['processedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(
              jsonSerialization['processedAt'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String eventId;

  String type;

  String payload;

  _iy95ofzk.PaypalEventStatus status;

  String? processError;

  DateTime receivedAt;

  DateTime? processedAt;

  /// Returns a shallow copy of this [PaypalEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  PaypalEvent copyWith({
    int? id,
    String? eventId,
    String? type,
    String? payload,
    _iy95ofzk.PaypalEventStatus? status,
    String? processError,
    DateTime? receivedAt,
    DateTime? processedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.PaypalEvent',
      if (id != null) 'id': id,
      'eventId': eventId,
      'type': type,
      'payload': payload,
      'status': status.toJson(),
      if (processError != null) 'processError': processError,
      'receivedAt': receivedAt.toJson(),
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.PaypalEvent',
      if (id != null) 'id': id,
      'eventId': eventId,
      'type': type,
      'payload': payload,
      'status': status.toJson(),
      if (processError != null) 'processError': processError,
      'receivedAt': receivedAt.toJson(),
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaypalEventImpl extends PaypalEvent {
  _PaypalEventImpl({
    int? id,
    required String eventId,
    required String type,
    required String payload,
    _iy95ofzk.PaypalEventStatus? status,
    String? processError,
    DateTime? receivedAt,
    DateTime? processedAt,
  }) : super._(
         id: id,
         eventId: eventId,
         type: type,
         payload: payload,
         status: status,
         processError: processError,
         receivedAt: receivedAt,
         processedAt: processedAt,
       );

  /// Returns a shallow copy of this [PaypalEvent]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  PaypalEvent copyWith({
    Object? id = _Undefined,
    String? eventId,
    String? type,
    String? payload,
    _iy95ofzk.PaypalEventStatus? status,
    Object? processError = _Undefined,
    DateTime? receivedAt,
    Object? processedAt = _Undefined,
  }) {
    return PaypalEvent(
      id: id is int? ? id : this.id,
      eventId: eventId ?? this.eventId,
      type: type ?? this.type,
      payload: payload ?? this.payload,
      status: status ?? this.status,
      processError: processError is String? ? processError : this.processError,
      receivedAt: receivedAt ?? this.receivedAt,
      processedAt: processedAt is DateTime? ? processedAt : this.processedAt,
    );
  }
}
