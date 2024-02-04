.PHONY: setup/backend
setup/backend:
	cd x_clone_app_server && docker compose up --build --detach

.PHONY: codegen
codegen:
	cd x_clone_app_server && serverpod generate

.PHONY: codegen/watch
codegen/watch:
	cd x_clone_app_server && serverpod generate --watch

.PHONY: create/migration
create/migration:
	cd x_clone_app_server && serverpod create-migration

.PHONY: run/backend
run/backend:
	cd x_clone_app_server && dart bin/main.dart --apply-migrations

.PHONY: run/pub_get
run/pub_get:
	cd x_clone_app_flutter && fvm flutter pub get; \
	cd ../x_clone_app_server && flutter pub get; \
	cd ../x_clone_app_client && flutter pub get

.PHONY: run/build_runner
run/build_runner:
	cd x_clone_app_flutter && fvm flutter pub run build_runner build --delete-conflicting-outputs