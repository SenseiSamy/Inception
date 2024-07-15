FROM alpine:3.18

RUN apk add php8 php8-fpm

COPY ./install_wordpress.sh /tmp/install_wordpress.sh

RUN chmod +x /tmp/install_wordpress.sh && sh /tmp/install_wordpress.sh

RUN 