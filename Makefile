.PHONY: install
install:
	@docker compose up -d

.PHONY: force-install
force-install:
	@docker compose up -d --force-recreate --build