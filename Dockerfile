
FROM debian:11

WORKDIR /nginexFolder

RUN apt-get update && \
    apt-get install -y nginx openssl

RUN mkdir -p nginexMaterial opensslMaterial

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout opensslMaterial/nginx.key -out opensslMaterial/nginx.crt \
    -subj "/C=MA/ST=Rehamna/L=Benguerir/O=UM6P/CN=localhost"

COPY ./nginexmaterial/default /etc/nginx/sites-enabled/

COPY ./nginexmaterial/index.html /nginexMaterial/

CMD ["nginx", "-g", "daemon off;"]

