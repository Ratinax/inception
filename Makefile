DOCKER_YML=srcs/docker-compose.yaml

all: $(DOCKER_YML)
	docker-compose -f $(DOCKER_YML) build
	docker-compose -f $(DOCKER_YML) up -d

up:
	docker-compose -f $(DOCKER_YML) up -d

down :
	docker-compose -f $(DOCKER_YML) down

ps :
	docker-compose -f $(DOCKER_YML) ps

clean:
	docker system prune

images:
	docker images
