# DEVELOPMENT
dev_build:
	docker compose -f ./development.yml up -d --no-deps --build
dev_up:
	docker compose -f ./development.yml up -d
dev_down:
	docker compose -f ./development.yml down
dev_sh:
	docker compose -f ./development.yml run --service-ports golang sh