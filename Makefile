all:
	docker compose -f srcs/docker-compose.yml up --build

down:
	docker compose -f srcs/docker-compose.yml down

re: down
	docker volume rm srcs_mariadb-data srcs_wordpress-data
	make all
