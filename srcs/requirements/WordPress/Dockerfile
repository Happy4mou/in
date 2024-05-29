
FROM debian:11

WORKDIR /WordPress

RUN mkdir scripts wordpress_src /run/php

COPY ./WordPress_material/wp_install.sh scripts/

RUN chmod +x ./scripts/wp_install.sh
RUN apt-get update && apt-get install -y curl
RUN apt-get install -y php php-mysql php-fpm php-curl php-gd php-intl \
    php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-client


CMD ["bash" , "./scripts/wp_install.sh"]