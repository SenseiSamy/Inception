FROM alpine:3.18

RUN apk add php php-fpm

COPY ./install_wordpress.sh /tmp/install_wordpress.sh

RUN chmod +x /tmp/install_wordpress.sh && /tmp/install_wordpress.sh
