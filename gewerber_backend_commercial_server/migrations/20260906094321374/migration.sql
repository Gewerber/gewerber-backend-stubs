BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_paypal_event" (
    "id" bigserial PRIMARY KEY,
    "eventId" text NOT NULL,
    "type" text NOT NULL,
    "payload" text NOT NULL,
    "status" text NOT NULL DEFAULT 'received'::text,
    "processError" text,
    "receivedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "processedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "commercial_paypal_event__eventId__unique_idx" ON "commercial_paypal_event" USING btree ("eventId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_plan" (
    "id" bigserial PRIMARY KEY,
    "code" text NOT NULL,
    "tier" text NOT NULL,
    "name" text NOT NULL,
    "currency" text NOT NULL DEFAULT 'eur'::text,
    "priceMonthlyMinor" bigint NOT NULL DEFAULT 0,
    "priceAnnualMinor" bigint NOT NULL DEFAULT 0,
    "paypalProductId" text,
    "paypalPlanIdMonthly" text,
    "paypalPlanIdAnnual" text,
    "features" json NOT NULL,
    "isActive" boolean NOT NULL DEFAULT true,
    "sortOrder" bigint NOT NULL DEFAULT 0,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "commercial_plan__code__unique_idx" ON "commercial_plan" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_promo_code" (
    "id" bigserial PRIMARY KEY,
    "code" text NOT NULL,
    "kind" text NOT NULL,
    "discountType" text,
    "discountPercent" bigint,
    "discountMinor" bigint,
    "trialDays" bigint,
    "planId" bigint,
    "maxRedemptions" bigint,
    "perUserLimit" bigint NOT NULL DEFAULT 1,
    "validFrom" timestamp without time zone,
    "validUntil" timestamp without time zone,
    "campaign" text,
    "ref" text,
    "note" text,
    "status" text NOT NULL DEFAULT 'active'::text,
    "paypalPlanVariantId" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "commercial_promo_code__code__unique_idx" ON "commercial_promo_code" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_promo_redemption" (
    "id" bigserial PRIMARY KEY,
    "promoCodeId" bigint NOT NULL,
    "userId" uuid NOT NULL,
    "businessId" bigint,
    "appliedSubscriptionId" bigint,
    "utmSource" text,
    "utmMedium" text,
    "utmCampaign" text,
    "redeemedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "promo_redemption_promo_user_unique_idx" ON "commercial_promo_redemption" USING btree ("promoCodeId", "userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_subscription" (
    "id" bigserial PRIMARY KEY,
    "userId" uuid NOT NULL,
    "businessId" bigint,
    "planId" bigint NOT NULL,
    "status" text NOT NULL DEFAULT 'trialing'::text,
    "billingCycle" text NOT NULL DEFAULT 'monthly'::text,
    "currentPeriodStart" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "currentPeriodEnd" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "trialEndsAt" timestamp without time zone,
    "cancelAtPeriodEnd" boolean NOT NULL DEFAULT false,
    "canceledAt" timestamp without time zone,
    "paypalSubscriptionId" text,
    "paypalPayerId" text,
    "appliedPromoCodeId" bigint,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE INDEX "subscription_user_idx" ON "commercial_subscription" USING btree ("userId");
CREATE INDEX "subscription_paypal_subscription_idx" ON "commercial_subscription" USING btree ("paypalSubscriptionId");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_cloud_storage" ADD COLUMN "contentType" text;
ALTER TABLE "serverpod_cloud_storage" ADD COLUMN "cacheControl" text;
ALTER TABLE "serverpod_cloud_storage" ADD COLUMN "contentDisposition" text;
ALTER TABLE "serverpod_cloud_storage" ADD COLUMN "contentEncoding" text;
ALTER TABLE "serverpod_cloud_storage" ADD COLUMN "customMetadata" text;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage_direct_download" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL,
    "downloadFileName" text,
    "contentType" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_download_auth_key" ON "serverpod_cloud_storage_direct_download" USING btree ("authKey");
CREATE INDEX "serverpod_cloud_storage_direct_download_expiration" ON "serverpod_cloud_storage_direct_download" USING btree ("expiration");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "maxFileSize" bigint NOT NULL DEFAULT 10485760;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "contentLength" bigint;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "preventOverwrite" boolean NOT NULL DEFAULT false;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "contentType" text;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "cacheControl" text;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "contentDisposition" text;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "contentEncoding" text;
ALTER TABLE "serverpod_cloud_storage_direct_upload" ADD COLUMN "customMetadata" text;
--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "commercial_subscription"
    ADD CONSTRAINT "commercial_subscription_fk_0"
    FOREIGN KEY("planId")
    REFERENCES "commercial_plan"("id")
    ON DELETE RESTRICT
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR gewerber_backend_commercial
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('gewerber_backend_commercial', '20260906094321374', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260906094321374', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();


COMMIT;
