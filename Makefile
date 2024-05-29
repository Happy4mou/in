DOCKER_CMP = ./srcs/docker-compose.yml

default : up

up :
	@docker-compose -f $(DOCKER_CMP) up --build
down :
	@docker-compose -f $(COMPOSE_FILE) down
restart :
	@docker-compose -f $(COMPOSE_FILE) restart

clean : clean-c clean-img clean-vols

clean-c :
	@docker rm -f $$(docker ps -a -q) || true
clean-img :
	@docker rmi -f $$(docker images -q) || true
clean-vols :
	@docker volume rm $$(docker volume ls -q) || true