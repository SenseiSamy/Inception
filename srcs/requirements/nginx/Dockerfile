FROM alpine:3.18

RUN ["apk", "add", "nginx"]

COPY nginx.conf /tmp/nginx.conf

CMD ["nginx", "-c", "/tmp/nginx.conf", "-g", "daemon off;"]