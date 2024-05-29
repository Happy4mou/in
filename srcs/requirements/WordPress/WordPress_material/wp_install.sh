sleep 10

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --path=wordpress_src/ --allow-root

cd wordpress_src
sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbname=$DATABASE_NAME --dbuser=$USER --dbpass=$PASSW --dbhost=$DATABASE_NAME --allow-root
wp core install --url="https://mmajdoub.42.fr" --title="My WordPress Site" --admin_user=$ADMIN --admin_email=$ADMIN_email --admin_password=$ADMIN_PAss --allow-root
wp user create $USER_WP $USER_email --user_pass=$USER_PAss --allow-root
exec php-fpm7.4 -F


