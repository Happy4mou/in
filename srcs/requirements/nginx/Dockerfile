
FROM debian:11

WORKDIR /nginexFolder


RUN apt-get update && \
    apt-get install -y nginx openssl

RUN mkdir -p nginexMaterial opensslMaterial

COPY ./nginexmaterial/script_ng.sh ./opensslMaterial/
RUN chmod +x ./opensslMaterial/script_ng.sh
CMD ["./opensslMaterial/script_ng.sh"]

