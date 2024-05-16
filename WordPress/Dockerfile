
FROM debian:11

WORKDIR /WordPress

RUN mkdir scripts wordpress_src /run/php

COPY ./WordPress_material/wp_install.sh scripts/

RUN chmod +x ./scripts/wp_install.sh


CMD ["bash" , "./scripts/wp_install.sh"]