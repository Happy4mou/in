#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout $SSL_KEy -out $SSL_CEr \
    -subj "/C=MA/ST=Rehamna/L=Benguerir/O=UM6P/CN=localhost"

echo "
server {
        listen 443 ssl;
        server_name mmajdoub.42.fr;

        ssl_certificate $SSL_CEr;
        ssl_certificate_key $SSL_KEy;

        ssl_protocols        TLSv1.2;
        root $PATH_WP;
        location / {
            index index.php;
        }
        location ~ \.php$ {
            include snippets/fastcgi-php.conf;
            fastcgi_pass $NAME_WP:$PORT_WP;
    }
}
">/etc/nginx/sites-enabled/default

exec nginx -g 'daemon off;'