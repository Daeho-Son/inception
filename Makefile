all:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

logs:
	@bash ./scripts/logs.sh
	@cat logs.txt
	@rm logs.txt

ps :
	@docker ps -a

exec:
	@bash ./scripts/exec.sh

clean:
	@docker-compose -f ./srcs/docker-compose.yml down

fclean:
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all
	@docker volume rm srcs_volume_for_mariadb
	@docker volume rm srcs_volume_for_wordpress

re: fclean all

.PHONY: all logs ps clean fclean re

