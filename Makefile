.PHONY: build build-force down auth api web

config:
		docker-compose config

build:
		docker-compose build

build-f:
		docker-compose build --no-cache

down:
		docker-compose down

up:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d

logs:
	docker-compose logs -f -t

pause:
	docker-compose pause

unpause:
	docker-compose unpause

api:
		docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d nginx-proxy api prisma api_db

api_test:
		docker-compose -f docker-compose.yml -f docker-compose.test.yml up --abort-on-container-exit api prisma api_db

web:
		docker-compose up -d nginx-proxy web

