/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, no_leading_underscores_for_library_prefixes
// ignore_for_file: unnecessary_type_check

import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'modules/waitlist/models/join_waitlist_request.dart' as _igv3k488;
import 'modules/waitlist/models/waitlist_entry.dart' as _igdqkb2n;
import 'modules/waitlist/models/waitlist_exception.dart' as _ibplyxx4;
import 'modules/waitlist/models/waitlist_locale.dart' as _i4uj41vo;
import 'modules/waitlist/models/waitlist_source.dart' as _i18l67d9;
import 'modules/waitlist/models/waitlist_status.dart' as _ivebcceg;
export 'modules/waitlist/models/join_waitlist_request.dart';
export 'modules/waitlist/models/waitlist_entry.dart';
export 'modules/waitlist/models/waitlist_exception.dart';
export 'modules/waitlist/models/waitlist_locale.dart';
export 'modules/waitlist/models/waitlist_source.dart';
export 'modules/waitlist/models/waitlist_status.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  final Set<_isc.SerializationManager> _hostProtocols = {};

  void registerHostProtocol(
    String projectName,
    _isc.SerializationManager protocol,
  ) {
    _hostProtocols.add(protocol);
  }

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    if (className == null) return null;
    if (!className.startsWith('gewerber_backend_commercial.')) return className;
    return className.substring(28);
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _igv3k488.JoinWaitlistRequest) {
      return _igv3k488.JoinWaitlistRequest.fromJson(data) as T;
    }
    if (t == _igdqkb2n.WaitlistEntry) {
      return _igdqkb2n.WaitlistEntry.fromJson(data) as T;
    }
    if (t == _ibplyxx4.WaitlistException) {
      return _ibplyxx4.WaitlistException.fromJson(data) as T;
    }
    if (t == _i4uj41vo.WaitlistLocale) {
      return _i4uj41vo.WaitlistLocale.fromJson(data) as T;
    }
    if (t == _i18l67d9.WaitlistSource) {
      return _i18l67d9.WaitlistSource.fromJson(data) as T;
    }
    if (t == _ivebcceg.WaitlistStatus) {
      return _ivebcceg.WaitlistStatus.fromJson(data) as T;
    }
    if (t == _isc.getType<_igv3k488.JoinWaitlistRequest?>()) {
      return (data != null
              ? _igv3k488.JoinWaitlistRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_igdqkb2n.WaitlistEntry?>()) {
      return (data != null ? _igdqkb2n.WaitlistEntry.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ibplyxx4.WaitlistException?>()) {
      return (data != null ? _ibplyxx4.WaitlistException.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i4uj41vo.WaitlistLocale?>()) {
      return (data != null ? _i4uj41vo.WaitlistLocale.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i18l67d9.WaitlistSource?>()) {
      return (data != null ? _i18l67d9.WaitlistSource.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ivebcceg.WaitlistStatus?>()) {
      return (data != null ? _ivebcceg.WaitlistStatus.fromJson(data) : null)
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _igv3k488.JoinWaitlistRequest => 'JoinWaitlistRequest',
      _igdqkb2n.WaitlistEntry => 'WaitlistEntry',
      _ibplyxx4.WaitlistException => 'WaitlistException',
      _i4uj41vo.WaitlistLocale => 'WaitlistLocale',
      _i18l67d9.WaitlistSource => 'WaitlistSource',
      _ivebcceg.WaitlistStatus => 'WaitlistStatus',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'gewerber_backend_commercial.',
        '',
      );
    }

    switch (data) {
      case _igv3k488.JoinWaitlistRequest():
        return 'JoinWaitlistRequest';
      case _igdqkb2n.WaitlistEntry():
        return 'WaitlistEntry';
      case _ibplyxx4.WaitlistException():
        return 'WaitlistException';
      case _i4uj41vo.WaitlistLocale():
        return 'WaitlistLocale';
      case _i18l67d9.WaitlistSource():
        return 'WaitlistSource';
      case _ivebcceg.WaitlistStatus():
        return 'WaitlistStatus';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'JoinWaitlistRequest') {
      return deserialize<_igv3k488.JoinWaitlistRequest>(data['data']);
    }
    if (dataClassName == 'WaitlistEntry') {
      return deserialize<_igdqkb2n.WaitlistEntry>(data['data']);
    }
    if (dataClassName == 'WaitlistException') {
      return deserialize<_ibplyxx4.WaitlistException>(data['data']);
    }
    if (dataClassName == 'WaitlistLocale') {
      return deserialize<_i4uj41vo.WaitlistLocale>(data['data']);
    }
    if (dataClassName == 'WaitlistSource') {
      return deserialize<_i18l67d9.WaitlistSource>(data['data']);
    }
    if (dataClassName == 'WaitlistStatus') {
      return deserialize<_ivebcceg.WaitlistStatus>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  Object? dynamicFieldToJson(
    Object? object, {
    bool forProtocol = false,
  }) {
    if ((object is List || object is Set || object is Map) ||
        getClassNameForObject(object) != null) {
      return super.dynamicFieldToJson(object, forProtocol: forProtocol);
    }
    for (final protocol in _hostProtocols) {
      final className = protocol.getClassNameForObject(object);
      if (className == null) continue;
      final host = protocol.getModuleName();
      final wrapped = {
        'className': className.contains('.') ? className : '$host.$className',
        'data': object,
      };
      return forProtocol
          ? _isc.SerializationManager.toEncodableForProtocol(wrapped)
          : _isc.SerializationManager.toEncodable(wrapped);
    }
    return super.dynamicFieldToJson(object, forProtocol: forProtocol);
  }

  @override
  dynamic deserializeDynamicFieldValue(Object? value) {
    if (value == null) return null;
    if (value is! Map<String, dynamic> || value['className'] is! String) {
      throw FormatException(
        'Dynamic fields are encoded as a Map with className and data, but got '
        '${value.runtimeType} instead.',
      );
    }
    final className = value['className'] as String;
    for (final protocol in _hostProtocols) {
      final host = protocol.getModuleName();
      final hostPrefix = '$host.';
      if (className.startsWith(hostPrefix)) {
        final strippedClassName = className.substring(hostPrefix.length);
        if (strippedClassName.contains('.')) {
          throw FormatException(
            'Dynamic field className must not use multiple prefixes: $className',
          );
        }
        final hostData = Map<String, dynamic>.from(value);
        hostData['className'] = strippedClassName;
        return protocol.deserializeByClassName(hostData);
      }
    }
    if (className.contains('.')) {
      for (final protocol in _hostProtocols) {
        try {
          return protocol.deserializeByClassName(value);
        } on FormatException catch (_) {}
      }
    }
    return deserializeByClassName(value);
  }

  @override
  String getModuleName() => 'gewerber_backend_commercial';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
