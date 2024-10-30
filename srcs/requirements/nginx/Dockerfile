FROM alpine:3.19

RUN apk add nginx openssl

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/inception.key -out /etc/nginx/ssl/inception.crt -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=snaji.42.fr/UID=login"

COPY nginx.conf /etc/nginx/nginx.conf

CMD nginx -g "daemon off;"
