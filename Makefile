:PHONY: setup/backend
setup/backend:
	cd x_clone_app_server && docker compose up --build --detach

:PHONY: codegen/backend
codegen/backend:
	cd x_clone_app_server && serverpod generate

:PHONY: run/backend
run/backend:
	cd x_clone_app_server && dart bin/main.dart --apply-migrations
