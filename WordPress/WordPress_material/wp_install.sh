apt-get update && apt-get install -y curl

apt-get install -y php php-mysql php-fpm php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-client

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --path=wordpress_src/ --allow-root

cd wordpress_src
sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
wp config create --dbname=mydb --dbuser=myuser --dbpass=123 --dbhost=mydb --allow-root
wp core install --url="https://localhost" --title="My WordPress Site" --admin_user="admin" --admin_email="admin@example.com" --admin_password="123" --allow-root
exec php-fpm7.4 -F