BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "commercial_subscription_event" (
    "id" bigserial PRIMARY KEY,
    "actorUserId" uuid,
    "action" text NOT NULL,
    "subscriptionId" bigint,
    "promoCodeId" bigint,
    "details" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE INDEX "subscription_event_created_at_idx" ON "commercial_subscription_event" USING btree ("createdAt");
CREATE INDEX "subscription_event_action_idx" ON "commercial_subscription_event" USING btree ("action");


--
-- MIGRATION VERSION FOR gewerber_backend_commercial
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('gewerber_backend_commercial', '20260906173710236', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260906173710236', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();


COMMIT;
