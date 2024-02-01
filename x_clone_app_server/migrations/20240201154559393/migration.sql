BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" serial PRIMARY KEY,
    "body" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR x_clone_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('x_clone_app', '20240201154559393', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240201154559393', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
