# DEVELOPMENT
dev_build:
	docker compose -f ./run/development.yml up -d --no-deps --build
dev_up:
	docker compose -f ./run/development.yml up -d
dev_down:
	docker compose -f ./run/development.yml down
dev_sh:
	docker compose -f ./run/development.yml run --service-ports golang sh