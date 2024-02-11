BEGIN;

--
-- ACTION ALTER TABLE
--
DROP INDEX "post_user_unique_idx";
CREATE UNIQUE INDEX "post_user_id_unique_idx" ON "post" USING btree ("userId");

--
-- MIGRATION VERSION FOR x_clone_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('x_clone_app', '20240208154124177', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240208154124177', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
