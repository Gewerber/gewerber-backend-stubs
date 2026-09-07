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

import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_promo_code_view.dart'
    as _ixdh16c0;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/admin_subscription_view.dart'
    as _ivfv04zu;
import 'package:gewerber_backend_commercial_client/src/protocol/modules/subscription/models/plan_view.dart'
    as _i24e87mh;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'modules/subscription/models/admin_campaign_count.dart' as _ismu3g76;
import 'modules/subscription/models/admin_plan_count.dart' as _i2sqtkcx;
import 'modules/subscription/models/admin_promo_code_create_request.dart'
    as _ifl3kjgx;
import 'modules/subscription/models/admin_promo_code_detail.dart' as _ih4hr7y7;
import 'modules/subscription/models/admin_promo_code_view.dart' as _ix98ax1i;
import 'modules/subscription/models/admin_promo_redemption_row.dart'
    as _ic013jek;
import 'modules/subscription/models/admin_subscription_stats.dart' as _isqlh41o;
import 'modules/subscription/models/admin_subscription_view.dart' as _i9mpzdb5;
import 'modules/subscription/models/checkout_request.dart' as _it4roxcd;
import 'modules/subscription/models/checkout_view.dart' as _ipvgp8y2;
import 'modules/subscription/models/paypal_event.dart' as _ir6pdw60;
import 'modules/subscription/models/paypal_event_status.dart' as _i4aqbmlv;
import 'modules/subscription/models/plan.dart' as _irkd04k7;
import 'modules/subscription/models/plan_tier.dart' as _ikntdgs7;
import 'modules/subscription/models/plan_view.dart' as _imc45n2d;
import 'modules/subscription/models/promo_code.dart' as _iaze9zpn;
import 'modules/subscription/models/promo_code_kind.dart' as _id17p754;
import 'modules/subscription/models/promo_code_status.dart' as _ixlfonrj;
import 'modules/subscription/models/promo_discount_type.dart' as _irieie3z;
import 'modules/subscription/models/promo_exception.dart' as _ijwowkdq;
import 'modules/subscription/models/promo_preview.dart' as _i7ypksxy;
import 'modules/subscription/models/promo_redemption.dart' as _i9ebshft;
import 'modules/subscription/models/promo_redemption_view.dart' as _ie09atwx;
import 'modules/subscription/models/subscription.dart' as _i6saukvy;
import 'modules/subscription/models/subscription_admin_exception.dart'
    as _iu09j5eu;
import 'modules/subscription/models/subscription_billing_cycle.dart'
    as _i3cgokeq;
import 'modules/subscription/models/subscription_exception.dart' as _i5tjfyub;
import 'modules/subscription/models/subscription_status.dart' as _idbm4hmy;
import 'modules/subscription/models/subscription_view.dart' as _ijjhcz6r;
import 'modules/waitlist/models/join_waitlist_request.dart' as _igv3k488;
import 'modules/waitlist/models/waitlist_entry.dart' as _igdqkb2n;
import 'modules/waitlist/models/waitlist_exception.dart' as _ibplyxx4;
import 'modules/waitlist/models/waitlist_locale.dart' as _i4uj41vo;
import 'modules/waitlist/models/waitlist_source.dart' as _i18l67d9;
import 'modules/waitlist/models/waitlist_status.dart' as _ivebcceg;
export 'modules/subscription/models/admin_campaign_count.dart';
export 'modules/subscription/models/admin_plan_count.dart';
export 'modules/subscription/models/admin_promo_code_create_request.dart';
export 'modules/subscription/models/admin_promo_code_detail.dart';
export 'modules/subscription/models/admin_promo_code_view.dart';
export 'modules/subscription/models/admin_promo_redemption_row.dart';
export 'modules/subscription/models/admin_subscription_stats.dart';
export 'modules/subscription/models/admin_subscription_view.dart';
export 'modules/subscription/models/checkout_request.dart';
export 'modules/subscription/models/checkout_view.dart';
export 'modules/subscription/models/paypal_event.dart';
export 'modules/subscription/models/paypal_event_status.dart';
export 'modules/subscription/models/plan.dart';
export 'modules/subscription/models/plan_tier.dart';
export 'modules/subscription/models/plan_view.dart';
export 'modules/subscription/models/promo_code.dart';
export 'modules/subscription/models/promo_code_kind.dart';
export 'modules/subscription/models/promo_code_status.dart';
export 'modules/subscription/models/promo_discount_type.dart';
export 'modules/subscription/models/promo_exception.dart';
export 'modules/subscription/models/promo_preview.dart';
export 'modules/subscription/models/promo_redemption.dart';
export 'modules/subscription/models/promo_redemption_view.dart';
export 'modules/subscription/models/subscription.dart';
export 'modules/subscription/models/subscription_admin_exception.dart';
export 'modules/subscription/models/subscription_billing_cycle.dart';
export 'modules/subscription/models/subscription_exception.dart';
export 'modules/subscription/models/subscription_status.dart';
export 'modules/subscription/models/subscription_view.dart';
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

    if (t == _ismu3g76.AdminCampaignCount) {
      return _ismu3g76.AdminCampaignCount.fromJson(data) as T;
    }
    if (t == _i2sqtkcx.AdminPlanCount) {
      return _i2sqtkcx.AdminPlanCount.fromJson(data) as T;
    }
    if (t == _ifl3kjgx.AdminPromoCodeCreateRequest) {
      return _ifl3kjgx.AdminPromoCodeCreateRequest.fromJson(data) as T;
    }
    if (t == _ih4hr7y7.AdminPromoCodeDetail) {
      return _ih4hr7y7.AdminPromoCodeDetail.fromJson(data) as T;
    }
    if (t == _ix98ax1i.AdminPromoCodeView) {
      return _ix98ax1i.AdminPromoCodeView.fromJson(data) as T;
    }
    if (t == _ic013jek.AdminPromoRedemptionRow) {
      return _ic013jek.AdminPromoRedemptionRow.fromJson(data) as T;
    }
    if (t == _isqlh41o.AdminSubscriptionStats) {
      return _isqlh41o.AdminSubscriptionStats.fromJson(data) as T;
    }
    if (t == _i9mpzdb5.AdminSubscriptionView) {
      return _i9mpzdb5.AdminSubscriptionView.fromJson(data) as T;
    }
    if (t == _it4roxcd.CheckoutRequest) {
      return _it4roxcd.CheckoutRequest.fromJson(data) as T;
    }
    if (t == _ipvgp8y2.CheckoutView) {
      return _ipvgp8y2.CheckoutView.fromJson(data) as T;
    }
    if (t == _ir6pdw60.PaypalEvent) {
      return _ir6pdw60.PaypalEvent.fromJson(data) as T;
    }
    if (t == _i4aqbmlv.PaypalEventStatus) {
      return _i4aqbmlv.PaypalEventStatus.fromJson(data) as T;
    }
    if (t == _irkd04k7.Plan) {
      return _irkd04k7.Plan.fromJson(data) as T;
    }
    if (t == _ikntdgs7.PlanTier) {
      return _ikntdgs7.PlanTier.fromJson(data) as T;
    }
    if (t == _imc45n2d.PlanView) {
      return _imc45n2d.PlanView.fromJson(data) as T;
    }
    if (t == _iaze9zpn.PromoCode) {
      return _iaze9zpn.PromoCode.fromJson(data) as T;
    }
    if (t == _id17p754.PromoCodeKind) {
      return _id17p754.PromoCodeKind.fromJson(data) as T;
    }
    if (t == _ixlfonrj.PromoCodeStatus) {
      return _ixlfonrj.PromoCodeStatus.fromJson(data) as T;
    }
    if (t == _irieie3z.PromoDiscountType) {
      return _irieie3z.PromoDiscountType.fromJson(data) as T;
    }
    if (t == _ijwowkdq.PromoException) {
      return _ijwowkdq.PromoException.fromJson(data) as T;
    }
    if (t == _i7ypksxy.PromoPreview) {
      return _i7ypksxy.PromoPreview.fromJson(data) as T;
    }
    if (t == _i9ebshft.PromoRedemption) {
      return _i9ebshft.PromoRedemption.fromJson(data) as T;
    }
    if (t == _ie09atwx.PromoRedemptionView) {
      return _ie09atwx.PromoRedemptionView.fromJson(data) as T;
    }
    if (t == _i6saukvy.Subscription) {
      return _i6saukvy.Subscription.fromJson(data) as T;
    }
    if (t == _iu09j5eu.SubscriptionAdminException) {
      return _iu09j5eu.SubscriptionAdminException.fromJson(data) as T;
    }
    if (t == _i3cgokeq.SubscriptionBillingCycle) {
      return _i3cgokeq.SubscriptionBillingCycle.fromJson(data) as T;
    }
    if (t == _i5tjfyub.SubscriptionException) {
      return _i5tjfyub.SubscriptionException.fromJson(data) as T;
    }
    if (t == _idbm4hmy.SubscriptionStatus) {
      return _idbm4hmy.SubscriptionStatus.fromJson(data) as T;
    }
    if (t == _ijjhcz6r.SubscriptionView) {
      return _ijjhcz6r.SubscriptionView.fromJson(data) as T;
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
    if (t == _isc.getType<_ismu3g76.AdminCampaignCount?>()) {
      return (data != null ? _ismu3g76.AdminCampaignCount.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i2sqtkcx.AdminPlanCount?>()) {
      return (data != null ? _i2sqtkcx.AdminPlanCount.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ifl3kjgx.AdminPromoCodeCreateRequest?>()) {
      return (data != null
              ? _ifl3kjgx.AdminPromoCodeCreateRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ih4hr7y7.AdminPromoCodeDetail?>()) {
      return (data != null
              ? _ih4hr7y7.AdminPromoCodeDetail.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ix98ax1i.AdminPromoCodeView?>()) {
      return (data != null ? _ix98ax1i.AdminPromoCodeView.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ic013jek.AdminPromoRedemptionRow?>()) {
      return (data != null
              ? _ic013jek.AdminPromoRedemptionRow.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_isqlh41o.AdminSubscriptionStats?>()) {
      return (data != null
              ? _isqlh41o.AdminSubscriptionStats.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i9mpzdb5.AdminSubscriptionView?>()) {
      return (data != null
              ? _i9mpzdb5.AdminSubscriptionView.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_it4roxcd.CheckoutRequest?>()) {
      return (data != null ? _it4roxcd.CheckoutRequest.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ipvgp8y2.CheckoutView?>()) {
      return (data != null ? _ipvgp8y2.CheckoutView.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ir6pdw60.PaypalEvent?>()) {
      return (data != null ? _ir6pdw60.PaypalEvent.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i4aqbmlv.PaypalEventStatus?>()) {
      return (data != null ? _i4aqbmlv.PaypalEventStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_irkd04k7.Plan?>()) {
      return (data != null ? _irkd04k7.Plan.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ikntdgs7.PlanTier?>()) {
      return (data != null ? _ikntdgs7.PlanTier.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_imc45n2d.PlanView?>()) {
      return (data != null ? _imc45n2d.PlanView.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iaze9zpn.PromoCode?>()) {
      return (data != null ? _iaze9zpn.PromoCode.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_id17p754.PromoCodeKind?>()) {
      return (data != null ? _id17p754.PromoCodeKind.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ixlfonrj.PromoCodeStatus?>()) {
      return (data != null ? _ixlfonrj.PromoCodeStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_irieie3z.PromoDiscountType?>()) {
      return (data != null ? _irieie3z.PromoDiscountType.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ijwowkdq.PromoException?>()) {
      return (data != null ? _ijwowkdq.PromoException.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i7ypksxy.PromoPreview?>()) {
      return (data != null ? _i7ypksxy.PromoPreview.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i9ebshft.PromoRedemption?>()) {
      return (data != null ? _i9ebshft.PromoRedemption.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ie09atwx.PromoRedemptionView?>()) {
      return (data != null
              ? _ie09atwx.PromoRedemptionView.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i6saukvy.Subscription?>()) {
      return (data != null ? _i6saukvy.Subscription.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iu09j5eu.SubscriptionAdminException?>()) {
      return (data != null
              ? _iu09j5eu.SubscriptionAdminException.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i3cgokeq.SubscriptionBillingCycle?>()) {
      return (data != null
              ? _i3cgokeq.SubscriptionBillingCycle.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5tjfyub.SubscriptionException?>()) {
      return (data != null
              ? _i5tjfyub.SubscriptionException.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_idbm4hmy.SubscriptionStatus?>()) {
      return (data != null ? _idbm4hmy.SubscriptionStatus.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ijjhcz6r.SubscriptionView?>()) {
      return (data != null ? _ijjhcz6r.SubscriptionView.fromJson(data) : null)
          as T;
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
    if (t == List<_ic013jek.AdminPromoRedemptionRow>) {
      return (data as List)
              .map((e) => deserialize<_ic013jek.AdminPromoRedemptionRow>(e))
              .toList()
          as T;
    }
    if (t == List<_i2sqtkcx.AdminPlanCount>) {
      return (data as List)
              .map((e) => deserialize<_i2sqtkcx.AdminPlanCount>(e))
              .toList()
          as T;
    }
    if (t == List<_ismu3g76.AdminCampaignCount>) {
      return (data as List)
              .map((e) => deserialize<_ismu3g76.AdminCampaignCount>(e))
              .toList()
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<_ixdh16c0.AdminPromoCodeView>) {
      return (data as List)
              .map((e) => deserialize<_ixdh16c0.AdminPromoCodeView>(e))
              .toList()
          as T;
    }
    if (t == List<_ivfv04zu.AdminSubscriptionView>) {
      return (data as List)
              .map((e) => deserialize<_ivfv04zu.AdminSubscriptionView>(e))
              .toList()
          as T;
    }
    if (t == List<_i24e87mh.PlanView>) {
      return (data as List)
              .map((e) => deserialize<_i24e87mh.PlanView>(e))
              .toList()
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _ismu3g76.AdminCampaignCount => 'AdminCampaignCount',
      _i2sqtkcx.AdminPlanCount => 'AdminPlanCount',
      _ifl3kjgx.AdminPromoCodeCreateRequest => 'AdminPromoCodeCreateRequest',
      _ih4hr7y7.AdminPromoCodeDetail => 'AdminPromoCodeDetail',
      _ix98ax1i.AdminPromoCodeView => 'AdminPromoCodeView',
      _ic013jek.AdminPromoRedemptionRow => 'AdminPromoRedemptionRow',
      _isqlh41o.AdminSubscriptionStats => 'AdminSubscriptionStats',
      _i9mpzdb5.AdminSubscriptionView => 'AdminSubscriptionView',
      _it4roxcd.CheckoutRequest => 'CheckoutRequest',
      _ipvgp8y2.CheckoutView => 'CheckoutView',
      _ir6pdw60.PaypalEvent => 'PaypalEvent',
      _i4aqbmlv.PaypalEventStatus => 'PaypalEventStatus',
      _irkd04k7.Plan => 'Plan',
      _ikntdgs7.PlanTier => 'PlanTier',
      _imc45n2d.PlanView => 'PlanView',
      _iaze9zpn.PromoCode => 'PromoCode',
      _id17p754.PromoCodeKind => 'PromoCodeKind',
      _ixlfonrj.PromoCodeStatus => 'PromoCodeStatus',
      _irieie3z.PromoDiscountType => 'PromoDiscountType',
      _ijwowkdq.PromoException => 'PromoException',
      _i7ypksxy.PromoPreview => 'PromoPreview',
      _i9ebshft.PromoRedemption => 'PromoRedemption',
      _ie09atwx.PromoRedemptionView => 'PromoRedemptionView',
      _i6saukvy.Subscription => 'Subscription',
      _iu09j5eu.SubscriptionAdminException => 'SubscriptionAdminException',
      _i3cgokeq.SubscriptionBillingCycle => 'SubscriptionBillingCycle',
      _i5tjfyub.SubscriptionException => 'SubscriptionException',
      _idbm4hmy.SubscriptionStatus => 'SubscriptionStatus',
      _ijjhcz6r.SubscriptionView => 'SubscriptionView',
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
      case _ismu3g76.AdminCampaignCount():
        return 'AdminCampaignCount';
      case _i2sqtkcx.AdminPlanCount():
        return 'AdminPlanCount';
      case _ifl3kjgx.AdminPromoCodeCreateRequest():
        return 'AdminPromoCodeCreateRequest';
      case _ih4hr7y7.AdminPromoCodeDetail():
        return 'AdminPromoCodeDetail';
      case _ix98ax1i.AdminPromoCodeView():
        return 'AdminPromoCodeView';
      case _ic013jek.AdminPromoRedemptionRow():
        return 'AdminPromoRedemptionRow';
      case _isqlh41o.AdminSubscriptionStats():
        return 'AdminSubscriptionStats';
      case _i9mpzdb5.AdminSubscriptionView():
        return 'AdminSubscriptionView';
      case _it4roxcd.CheckoutRequest():
        return 'CheckoutRequest';
      case _ipvgp8y2.CheckoutView():
        return 'CheckoutView';
      case _ir6pdw60.PaypalEvent():
        return 'PaypalEvent';
      case _i4aqbmlv.PaypalEventStatus():
        return 'PaypalEventStatus';
      case _irkd04k7.Plan():
        return 'Plan';
      case _ikntdgs7.PlanTier():
        return 'PlanTier';
      case _imc45n2d.PlanView():
        return 'PlanView';
      case _iaze9zpn.PromoCode():
        return 'PromoCode';
      case _id17p754.PromoCodeKind():
        return 'PromoCodeKind';
      case _ixlfonrj.PromoCodeStatus():
        return 'PromoCodeStatus';
      case _irieie3z.PromoDiscountType():
        return 'PromoDiscountType';
      case _ijwowkdq.PromoException():
        return 'PromoException';
      case _i7ypksxy.PromoPreview():
        return 'PromoPreview';
      case _i9ebshft.PromoRedemption():
        return 'PromoRedemption';
      case _ie09atwx.PromoRedemptionView():
        return 'PromoRedemptionView';
      case _i6saukvy.Subscription():
        return 'Subscription';
      case _iu09j5eu.SubscriptionAdminException():
        return 'SubscriptionAdminException';
      case _i3cgokeq.SubscriptionBillingCycle():
        return 'SubscriptionBillingCycle';
      case _i5tjfyub.SubscriptionException():
        return 'SubscriptionException';
      case _idbm4hmy.SubscriptionStatus():
        return 'SubscriptionStatus';
      case _ijjhcz6r.SubscriptionView():
        return 'SubscriptionView';
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
    if (dataClassName == 'AdminCampaignCount') {
      return deserialize<_ismu3g76.AdminCampaignCount>(data['data']);
    }
    if (dataClassName == 'AdminPlanCount') {
      return deserialize<_i2sqtkcx.AdminPlanCount>(data['data']);
    }
    if (dataClassName == 'AdminPromoCodeCreateRequest') {
      return deserialize<_ifl3kjgx.AdminPromoCodeCreateRequest>(data['data']);
    }
    if (dataClassName == 'AdminPromoCodeDetail') {
      return deserialize<_ih4hr7y7.AdminPromoCodeDetail>(data['data']);
    }
    if (dataClassName == 'AdminPromoCodeView') {
      return deserialize<_ix98ax1i.AdminPromoCodeView>(data['data']);
    }
    if (dataClassName == 'AdminPromoRedemptionRow') {
      return deserialize<_ic013jek.AdminPromoRedemptionRow>(data['data']);
    }
    if (dataClassName == 'AdminSubscriptionStats') {
      return deserialize<_isqlh41o.AdminSubscriptionStats>(data['data']);
    }
    if (dataClassName == 'AdminSubscriptionView') {
      return deserialize<_i9mpzdb5.AdminSubscriptionView>(data['data']);
    }
    if (dataClassName == 'CheckoutRequest') {
      return deserialize<_it4roxcd.CheckoutRequest>(data['data']);
    }
    if (dataClassName == 'CheckoutView') {
      return deserialize<_ipvgp8y2.CheckoutView>(data['data']);
    }
    if (dataClassName == 'PaypalEvent') {
      return deserialize<_ir6pdw60.PaypalEvent>(data['data']);
    }
    if (dataClassName == 'PaypalEventStatus') {
      return deserialize<_i4aqbmlv.PaypalEventStatus>(data['data']);
    }
    if (dataClassName == 'Plan') {
      return deserialize<_irkd04k7.Plan>(data['data']);
    }
    if (dataClassName == 'PlanTier') {
      return deserialize<_ikntdgs7.PlanTier>(data['data']);
    }
    if (dataClassName == 'PlanView') {
      return deserialize<_imc45n2d.PlanView>(data['data']);
    }
    if (dataClassName == 'PromoCode') {
      return deserialize<_iaze9zpn.PromoCode>(data['data']);
    }
    if (dataClassName == 'PromoCodeKind') {
      return deserialize<_id17p754.PromoCodeKind>(data['data']);
    }
    if (dataClassName == 'PromoCodeStatus') {
      return deserialize<_ixlfonrj.PromoCodeStatus>(data['data']);
    }
    if (dataClassName == 'PromoDiscountType') {
      return deserialize<_irieie3z.PromoDiscountType>(data['data']);
    }
    if (dataClassName == 'PromoException') {
      return deserialize<_ijwowkdq.PromoException>(data['data']);
    }
    if (dataClassName == 'PromoPreview') {
      return deserialize<_i7ypksxy.PromoPreview>(data['data']);
    }
    if (dataClassName == 'PromoRedemption') {
      return deserialize<_i9ebshft.PromoRedemption>(data['data']);
    }
    if (dataClassName == 'PromoRedemptionView') {
      return deserialize<_ie09atwx.PromoRedemptionView>(data['data']);
    }
    if (dataClassName == 'Subscription') {
      return deserialize<_i6saukvy.Subscription>(data['data']);
    }
    if (dataClassName == 'SubscriptionAdminException') {
      return deserialize<_iu09j5eu.SubscriptionAdminException>(data['data']);
    }
    if (dataClassName == 'SubscriptionBillingCycle') {
      return deserialize<_i3cgokeq.SubscriptionBillingCycle>(data['data']);
    }
    if (dataClassName == 'SubscriptionException') {
      return deserialize<_i5tjfyub.SubscriptionException>(data['data']);
    }
    if (dataClassName == 'SubscriptionStatus') {
      return deserialize<_idbm4hmy.SubscriptionStatus>(data['data']);
    }
    if (dataClassName == 'SubscriptionView') {
      return deserialize<_ijjhcz6r.SubscriptionView>(data['data']);
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
