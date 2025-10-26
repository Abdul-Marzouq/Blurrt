# Makefile for Blurrt App

PROJECT_NAME=blurrt-app

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

rebuild:
	docker-compose down
	docker-compose build --no-cache
	docker-compose up -d

logs:
	docker-compose logs -f

ps:
	docker-compose ps

frontend:
	docker-compose exec frontend sh

backend:
	docker-compose exec backend sh

db:
	docker-compose exec db psql -U postgres -d blurrt

clean:
	docker-compose down -v --rmi all --remove-orphans
