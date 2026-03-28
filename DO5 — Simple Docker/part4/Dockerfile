FROM nginx:latest

USER root

WORKDIR /server/

COPY server.c /server/
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && apt-get install -y \
    gcc \
    spawn-fcgi \
    libfcgi-dev \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT gcc server.c -lfcgi -o server && \
    spawn-fcgi -p 8080 ./server && \
    nginx -g 'daemon off;'