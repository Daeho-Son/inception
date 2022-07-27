all:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

logs:
	@bash ./scripts/logs.sh

ps :
	@docker ps -a

exec:
	@bash ./scripts/exec.sh

clean:
	@docker-compose -f ./srcs/docker-compose.yml down --rmi all

fclean:
	@bash ./scripts/clear.sh

re: fclean all

.PHONY: all logs ps clean fclean re

