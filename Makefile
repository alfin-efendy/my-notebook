.PHONY: install
install:
	@docker compose up -d

.PHONY: force-install
force-install:
	@docker compose up -d --force-recreate --build

.PHONY: remove-volumes
remove-volumes:
	@docker compose down
	@docker volume rm jupyter_data jupyter_tmp jupyter_cache
	@docker compose up -d