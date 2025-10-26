# ============================
# Variables
# ============================
DEV_COMPOSE_FILE = docker-compose.dev.yml
PROD_COMPOSE_FILE = docker-compose.prod.yml

# ============================
# Development Commands - All
# ============================
up-dev:
	docker-compose -f $(DEV_COMPOSE_FILE) up -d

down-dev:
	docker-compose -f $(DEV_COMPOSE_FILE) down

build-dev:
	docker-compose -f $(DEV_COMPOSE_FILE) build

rebuild-dev: down-dev build-dev up-dev

logs-dev:
	docker-compose -f $(DEV_COMPOSE_FILE) logs -f

ps-dev:
	docker-compose -f $(DEV_COMPOSE_FILE) ps

restart-dev: down-dev up-dev

# ============================
# Development Commands - Frontend
# ============================
up-dev-frontend:
	docker-compose -f $(DEV_COMPOSE_FILE) up -d frontend

down-dev-frontend:
	docker-compose -f $(DEV_COMPOSE_FILE) down frontend

build-dev-frontend:
	docker-compose -f $(DEV_COMPOSE_FILE) build frontend

logs-dev-frontend:
	docker-compose -f $(DEV_COMPOSE_FILE) logs -f frontend

restart-dev-frontend: down-dev-frontend up-dev-frontend

# ============================
# Development Commands - Backend
# ============================
up-dev-backend:
	docker-compose -f $(DEV_COMPOSE_FILE) up -d backend

down-dev-backend:
	docker-compose -f $(DEV_COMPOSE_FILE) down backend

build-dev-backend:
	docker-compose -f $(DEV_COMPOSE_FILE) build backend

logs-dev-backend:
	docker-compose -f $(DEV_COMPOSE_FILE) logs -f backend

restart-dev-backend: down-dev-backend up-dev-backend

# ============================
# Production Commands - All
# ============================
up-prod:
	docker-compose -f $(PROD_COMPOSE_FILE) up -d

down-prod:
	docker-compose -f $(PROD_COMPOSE_FILE) down

build-prod:
	docker-compose -f $(PROD_COMPOSE_FILE) build

rebuild-prod: down-prod build-prod up-prod

logs-prod:
	docker-compose -f $(PROD_COMPOSE_FILE) logs -f

ps-prod:
	docker-compose -f $(PROD_COMPOSE_FILE) ps

restart-prod: down-prod up-prod

# ============================
# Production Commands - Frontend
# ============================
up-prod-frontend:
	docker-compose -f $(PROD_COMPOSE_FILE) up -d frontend

down-prod-frontend:
	docker-compose -f $(PROD_COMPOSE_FILE) down frontend

build-prod-frontend:
	docker-compose -f $(PROD_COMPOSE_FILE) build frontend

logs-prod-frontend:
	docker-compose -f $(PROD_COMPOSE_FILE) logs -f frontend

restart-prod-frontend: down-prod-frontend up-prod-frontend

# ============================
# Production Commands - Backend
# ============================
up-prod-backend:
	docker-compose -f $(PROD_COMPOSE_FILE) up -d backend

down-prod-backend:
	docker-compose -f $(PROD_COMPOSE_FILE) down backend

build-prod-backend:
	docker-compose -f $(PROD_COMPOSE_FILE) build backend

logs-prod-backend:
	docker-compose -f $(PROD_COMPOSE_FILE) logs -f backend

restart-prod-backend: down-prod-backend up-prod-backend

# ============================
# Cleanup
# ============================
prune:
	docker system prune -af
	docker volume prune -f
