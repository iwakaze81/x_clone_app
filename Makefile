:PHONY: setup/backend
setup/backend:
	cd x_clone_app_server && docker compose up --build --detach

:PHONY: codegen/backend
codegen/backend:
	cd x_clone_app_server && serverpod generate

:PHONY: create/migration
create/migration:
	cd x_clone_app_server && serverpod create-migration

:PHONY: run/backend
run/backend:
	cd x_clone_app_server && dart bin/main.dart --apply-migrations
