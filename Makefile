.PHONY: build build-force down auth api web

config:
		docker-compose config

build:
		docker-compose build

no-cache:
		docker-compose build --no-cache

down:
		docker-compose down

up:
	docker-compose up

all:
		docker-compose up nginx-proxy web auth auth_db api prisma api_db

auth:
		docker-compose up nginx-proxy auth auth_db

api:
		docker-compose up nginx-proxy api prisma api_db

prisma-deploy:
		docker-compose exec api npm run prisma deploy

prisma-generate:
		docker-compose exec api npm run prisma generate

prisma-delete:
		docker-compose exec api npm run prisma delete

web:
		docker-compose up nginx-proxy web

