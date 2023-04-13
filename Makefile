PROJECT_NAME = Inception
YML_PATH = ./srcs/docker-compose.yml

all: up

up:
	@docker-compose -f ${YML_PATH} --project-name ${PROJECT_NAME} up --detach 

down:
	@docker-compose -f ${YML_PATH} --project-name ${PROJECT_NAME} down

build:
	@docker-compose -f ${YML_PATH} --project-name ${PROJECT_NAME} up --detach --build 

logs:
	@docker-compose -f ${YML_PATH} --project-name ${PROJECT_NAME} logs

.PHONY: all up down build logs
