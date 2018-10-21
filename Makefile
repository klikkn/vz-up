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
	docker-compose up -d

logs:
	docker-compose logs -f -t

pause:
	docker-compose pause

unpause:
	docker-compose unpause

api:
		docker-compose up -d nginx-proxy api prisma api_db

web:
		docker-compose up -d nginx-proxy web

