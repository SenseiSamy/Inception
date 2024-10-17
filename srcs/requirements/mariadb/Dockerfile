FROM debian:bullseye

RUN apt update && apt -y install mariadb-server

COPY ./script.sh /tmp/script.sh

COPY ./my.cnf /root/.my.cnf

CMD chmod +x /tmp/script.sh && /tmp/script.sh 