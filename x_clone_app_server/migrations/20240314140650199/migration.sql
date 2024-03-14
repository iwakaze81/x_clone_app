BEGIN;

--
-- ACTION ALTER TABLE
--
DROP INDEX "message_room_user_message_room_user_info_idx";

--
-- MIGRATION VERSION FOR x_clone_app
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('x_clone_app', '20240314140650199', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240314140650199', "timestamp" = now();

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

--
-- MIGRATION VERSION FOR serverpod_chat
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_chat', '20240115074243685', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074243685', "timestamp" = now();


COMMIT;
