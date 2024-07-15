all:
	docker compose -f srcs/docker-compose.yml up -d --build

clean:
	docker compose -f srcs/docker-compose.yml down

re: clean
	make all