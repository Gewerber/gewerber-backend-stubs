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

import 'package:gewerber_backend_commercial_server/src/generated/modules/subscription/models/admin_promo_code_view.dart'
    as _irlkaxwz;
import 'package:gewerber_backend_commercial_server/src/generated/modules/subscription/models/admin_subscription_view.dart'
    as _i1t5rjz4;
import 'package:gewerber_backend_commercial_server/src/generated/modules/subscription/models/plan_view.dart'
    as _i7saq0eb;
import 'package:serverpod/protocol.dart' as _isp;
import 'package:serverpod/serverpod.dart' as _is;
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
import 'modules/subscription/models/subscription_event.dart' as _ik5jglhf;
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
export 'modules/subscription/models/subscription_event.dart';
export 'modules/subscription/models/subscription_exception.dart';
export 'modules/subscription/models/subscription_status.dart';
export 'modules/subscription/models/subscription_view.dart';
export 'modules/waitlist/models/join_waitlist_request.dart';
export 'modules/waitlist/models/waitlist_entry.dart';
export 'modules/waitlist/models/waitlist_exception.dart';
export 'modules/waitlist/models/waitlist_locale.dart';
export 'modules/waitlist/models/waitlist_source.dart';
export 'modules/waitlist/models/waitlist_status.dart';

class Protocol extends _is.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  final Set<_is.SerializationManager> _hostProtocols = {};

  static List<_isp.TableDefinition> get targetTableDefinitions => [
    _isp.TableDefinition(
      name: 'commercial_paypal_event',
      dartName: 'PaypalEvent',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'eventId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'payload',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PaypalEventStatus',
          columnDefault: '\'received\'',
        ),
        _isp.ColumnDefinition(
          name: 'processError',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'receivedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'processedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'commercial_paypal_event__eventId__unique_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'eventId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_plan',
      dartName: 'Plan',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'tier',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PlanTier',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
          columnDefault: '\'eur\'',
        ),
        _isp.ColumnDefinition(
          name: 'priceMonthlyMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _isp.ColumnDefinition(
          name: 'priceAnnualMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _isp.ColumnDefinition(
          name: 'paypalProductId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'paypalPlanIdMonthly',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'paypalPlanIdAnnual',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'features',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _isp.ColumnDefinition(
          name: 'sortOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'commercial_plan__code__unique_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_promo_code',
      dartName: 'PromoCode',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'kind',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PromoCodeKind',
        ),
        _isp.ColumnDefinition(
          name: 'discountType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:PromoDiscountType?',
        ),
        _isp.ColumnDefinition(
          name: 'discountPercent',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'discountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'trialDays',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'planId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'maxRedemptions',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'perUserLimit',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '1',
        ),
        _isp.ColumnDefinition(
          name: 'validFrom',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'validUntil',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'campaign',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'ref',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'note',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:PromoCodeStatus',
          columnDefault: '\'active\'',
        ),
        _isp.ColumnDefinition(
          name: 'paypalPlanVariantId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'commercial_promo_code__code__unique_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_promo_redemption',
      dartName: 'PromoRedemption',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'promoCodeId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'businessId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'appliedSubscriptionId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'utmSource',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'utmMedium',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'utmCampaign',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'redeemedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'promo_redemption_promo_user_unique_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'promoCodeId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_subscription',
      dartName: 'Subscription',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'businessId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'planId',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:SubscriptionStatus',
          columnDefault: '\'trialing\'',
        ),
        _isp.ColumnDefinition(
          name: 'billingCycle',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:SubscriptionBillingCycle',
          columnDefault: '\'monthly\'',
        ),
        _isp.ColumnDefinition(
          name: 'currentPeriodStart',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'currentPeriodEnd',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'trialEndsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'cancelAtPeriodEnd',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'false',
        ),
        _isp.ColumnDefinition(
          name: 'canceledAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'paypalSubscriptionId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'paypalPayerId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'appliedPromoCodeId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'commercial_subscription_fk_0',
          columns: ['planId'],
          referenceTable: 'commercial_plan',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.restrict,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'subscription_user_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'subscription_paypal_subscription_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'paypalSubscriptionId',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_subscription_event',
      dartName: 'SubscriptionEvent',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'actorUserId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'subscriptionId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'promoCodeId',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'details',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'subscription_event_created_at_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'createdAt',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'subscription_event_action_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'action',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'commercial_waitlist_entry',
      dartName: 'WaitlistEntry',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'locale',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistLocale',
          columnDefault: '\'de\'',
        ),
        _isp.ColumnDefinition(
          name: 'source',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistSource',
          columnDefault: '\'website\'',
        ),
        _isp.ColumnDefinition(
          name: 'referrer',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'utmSource',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'utmMedium',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'utmCampaign',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'businessType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistStatus',
          columnDefault: '\'pending\'',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _isp.ColumnDefinition(
          name: 'invitedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'commercial_waitlist_entry__email__unique_idx',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
  ];

  void registerHostProtocol(
    String projectName,
    _is.SerializationManager protocol,
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
    if (t == _ik5jglhf.SubscriptionEvent) {
      return _ik5jglhf.SubscriptionEvent.fromJson(data) as T;
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
    if (t == _is.getType<_ismu3g76.AdminCampaignCount?>()) {
      return (data != null ? _ismu3g76.AdminCampaignCount.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i2sqtkcx.AdminPlanCount?>()) {
      return (data != null ? _i2sqtkcx.AdminPlanCount.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ifl3kjgx.AdminPromoCodeCreateRequest?>()) {
      return (data != null
              ? _ifl3kjgx.AdminPromoCodeCreateRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ih4hr7y7.AdminPromoCodeDetail?>()) {
      return (data != null
              ? _ih4hr7y7.AdminPromoCodeDetail.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ix98ax1i.AdminPromoCodeView?>()) {
      return (data != null ? _ix98ax1i.AdminPromoCodeView.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ic013jek.AdminPromoRedemptionRow?>()) {
      return (data != null
              ? _ic013jek.AdminPromoRedemptionRow.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_isqlh41o.AdminSubscriptionStats?>()) {
      return (data != null
              ? _isqlh41o.AdminSubscriptionStats.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i9mpzdb5.AdminSubscriptionView?>()) {
      return (data != null
              ? _i9mpzdb5.AdminSubscriptionView.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_it4roxcd.CheckoutRequest?>()) {
      return (data != null ? _it4roxcd.CheckoutRequest.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ipvgp8y2.CheckoutView?>()) {
      return (data != null ? _ipvgp8y2.CheckoutView.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ir6pdw60.PaypalEvent?>()) {
      return (data != null ? _ir6pdw60.PaypalEvent.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i4aqbmlv.PaypalEventStatus?>()) {
      return (data != null ? _i4aqbmlv.PaypalEventStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_irkd04k7.Plan?>()) {
      return (data != null ? _irkd04k7.Plan.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ikntdgs7.PlanTier?>()) {
      return (data != null ? _ikntdgs7.PlanTier.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_imc45n2d.PlanView?>()) {
      return (data != null ? _imc45n2d.PlanView.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iaze9zpn.PromoCode?>()) {
      return (data != null ? _iaze9zpn.PromoCode.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_id17p754.PromoCodeKind?>()) {
      return (data != null ? _id17p754.PromoCodeKind.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ixlfonrj.PromoCodeStatus?>()) {
      return (data != null ? _ixlfonrj.PromoCodeStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_irieie3z.PromoDiscountType?>()) {
      return (data != null ? _irieie3z.PromoDiscountType.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ijwowkdq.PromoException?>()) {
      return (data != null ? _ijwowkdq.PromoException.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i7ypksxy.PromoPreview?>()) {
      return (data != null ? _i7ypksxy.PromoPreview.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i9ebshft.PromoRedemption?>()) {
      return (data != null ? _i9ebshft.PromoRedemption.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ie09atwx.PromoRedemptionView?>()) {
      return (data != null
              ? _ie09atwx.PromoRedemptionView.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6saukvy.Subscription?>()) {
      return (data != null ? _i6saukvy.Subscription.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iu09j5eu.SubscriptionAdminException?>()) {
      return (data != null
              ? _iu09j5eu.SubscriptionAdminException.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i3cgokeq.SubscriptionBillingCycle?>()) {
      return (data != null
              ? _i3cgokeq.SubscriptionBillingCycle.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ik5jglhf.SubscriptionEvent?>()) {
      return (data != null ? _ik5jglhf.SubscriptionEvent.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i5tjfyub.SubscriptionException?>()) {
      return (data != null
              ? _i5tjfyub.SubscriptionException.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_idbm4hmy.SubscriptionStatus?>()) {
      return (data != null ? _idbm4hmy.SubscriptionStatus.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ijjhcz6r.SubscriptionView?>()) {
      return (data != null ? _ijjhcz6r.SubscriptionView.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_igv3k488.JoinWaitlistRequest?>()) {
      return (data != null
              ? _igv3k488.JoinWaitlistRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_igdqkb2n.WaitlistEntry?>()) {
      return (data != null ? _igdqkb2n.WaitlistEntry.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ibplyxx4.WaitlistException?>()) {
      return (data != null ? _ibplyxx4.WaitlistException.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i4uj41vo.WaitlistLocale?>()) {
      return (data != null ? _i4uj41vo.WaitlistLocale.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i18l67d9.WaitlistSource?>()) {
      return (data != null ? _i18l67d9.WaitlistSource.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivebcceg.WaitlistStatus?>()) {
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
    if (t == List<_irlkaxwz.AdminPromoCodeView>) {
      return (data as List)
              .map((e) => deserialize<_irlkaxwz.AdminPromoCodeView>(e))
              .toList()
          as T;
    }
    if (t == List<_i1t5rjz4.AdminSubscriptionView>) {
      return (data as List)
              .map((e) => deserialize<_i1t5rjz4.AdminSubscriptionView>(e))
              .toList()
          as T;
    }
    if (t == List<_i7saq0eb.PlanView>) {
      return (data as List)
              .map((e) => deserialize<_i7saq0eb.PlanView>(e))
              .toList()
          as T;
    }
    try {
      return _isp.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
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
      _ik5jglhf.SubscriptionEvent => 'SubscriptionEvent',
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
      case _ik5jglhf.SubscriptionEvent():
        return 'SubscriptionEvent';
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
    className = _isp.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod.$className';
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
    if (dataClassName == 'SubscriptionEvent') {
      return deserialize<_ik5jglhf.SubscriptionEvent>(data['data']);
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
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _isp.Protocol().deserializeByClassName(data);
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
          ? _is.SerializationManager.toEncodableForProtocol(wrapped)
          : _is.SerializationManager.toEncodable(wrapped);
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
  _is.Table? getTableForType(Type t) {
    {
      var table = _isp.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _ir6pdw60.PaypalEvent:
        return _ir6pdw60.PaypalEvent.t;
      case _irkd04k7.Plan:
        return _irkd04k7.Plan.t;
      case _iaze9zpn.PromoCode:
        return _iaze9zpn.PromoCode.t;
      case _i9ebshft.PromoRedemption:
        return _i9ebshft.PromoRedemption.t;
      case _i6saukvy.Subscription:
        return _i6saukvy.Subscription.t;
      case _ik5jglhf.SubscriptionEvent:
        return _ik5jglhf.SubscriptionEvent.t;
      case _igdqkb2n.WaitlistEntry:
        return _igdqkb2n.WaitlistEntry.t;
    }
    return null;
  }

  @override
  List<_isp.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

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
    try {
      return _isp.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
