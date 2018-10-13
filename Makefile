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
	docker-compose up -d

logs:
	docker-compose logs -f -t

pause:
	docker-compose pause

unpause:
	docker-compose unpause

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

