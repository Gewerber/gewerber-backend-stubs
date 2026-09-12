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

abstract class JoinWaitlistRequest
    implements _is.SerializableModel, _is.ProtocolSerialization {
  JoinWaitlistRequest._({
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
    this.honeypot,
  }) : locale = locale ?? _imzvqjwd.WaitlistLocale.de,
       source = source ?? _i4nloxkl.WaitlistSource.website;

  factory JoinWaitlistRequest({
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
    String? honeypot,
  }) = _JoinWaitlistRequestImpl;

  factory JoinWaitlistRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return JoinWaitlistRequest(
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
      honeypot: jsonSerialization['honeypot'] as String?,
    );
  }

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

  String? honeypot;

  /// Returns a shallow copy of this [JoinWaitlistRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  JoinWaitlistRequest copyWith({
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
    String? honeypot,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.JoinWaitlistRequest',
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
      if (honeypot != null) 'honeypot': honeypot,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.JoinWaitlistRequest',
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
      if (honeypot != null) 'honeypot': honeypot,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _JoinWaitlistRequestImpl extends JoinWaitlistRequest {
  _JoinWaitlistRequestImpl({
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
    String? honeypot,
  }) : super._(
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
         honeypot: honeypot,
       );

  /// Returns a shallow copy of this [JoinWaitlistRequest]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  JoinWaitlistRequest copyWith({
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
    Object? honeypot = _Undefined,
  }) {
    return JoinWaitlistRequest(
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
      honeypot: honeypot is String? ? honeypot : this.honeypot,
    );
  }
}
