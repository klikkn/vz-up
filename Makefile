.PHONY: build build-force down auth api web

config:
		docker-compose config

build:
		docker-compose build

build-force:
		docker-compose build --no-cache

down:
		docker-compose down

all:
    docker-compose up nginx-proxy web auth auth_db api prisma postgres

auth:
		docker-compose up nginx-proxy auth auth_db

api:
		docker-compose up nginx-proxy api prisma postgres

web:
		docker-compose up nginx-proxy web

