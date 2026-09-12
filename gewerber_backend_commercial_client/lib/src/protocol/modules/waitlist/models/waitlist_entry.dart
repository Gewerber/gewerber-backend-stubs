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
import '../../../modules/waitlist/models/waitlist_locale.dart' as _imzvqjwd;
import '../../../modules/waitlist/models/waitlist_source.dart' as _i4nloxkl;
import '../../../modules/waitlist/models/waitlist_status.dart' as _ilsh1rjc;

abstract class WaitlistEntry
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
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
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      invitedAt: jsonSerialization['invitedAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['invitedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
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

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
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
  @_isc.useResult
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
