FROM alpine:3.19

RUN apk add mariadb mariadb-client

COPY ./script.sh /tmp/script.sh

COPY ./my.cnf /root/.my.cnf

CMD chmod +x /tmp/script.sh && /tmp/script.sh 