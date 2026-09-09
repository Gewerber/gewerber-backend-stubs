BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "commercial_waitlist_entry" ADD COLUMN "utmTerm" text;
ALTER TABLE "commercial_waitlist_entry" ADD COLUMN "utmContent" text;
ALTER TABLE "commercial_waitlist_entry" ADD COLUMN "gclid" text;
ALTER TABLE "commercial_waitlist_entry" ADD COLUMN "fbclid" text;
ALTER TABLE "commercial_waitlist_entry" ADD COLUMN "landingPage" text;

--
-- MIGRATION VERSION FOR gewerber_backend_commercial
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('gewerber_backend_commercial', '20260909132211773-waitlist-first-touch-attribution', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260909132211773-waitlist-first-touch-attribution', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();


COMMIT;
