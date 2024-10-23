FROM alpine:3.18

RUN apk update && apk upgrade && apk add\
    php82\
	php82-common\
	php82-fpm\
	php82-gd\
	php82-mysqli\
	php82-mysqlnd\
	php82-phar\
	php82-mbstring\
	php82-iconv\
	curl\
	mariadb-client

RUN mkdir /code/

COPY ./install_wordpress.sh /code/install_wordpress.sh

COPY ./www.conf /etc/php82/php-fpm.d/www.conf

CMD chmod +x /code/install_wordpress.sh && /code/install_wordpress.sh