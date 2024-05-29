service mariadb start

echo "
CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;

CREATE USER '$USER'@'%' IDENTIFIED BY '$PASSW';

GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USER'@'%' IDENTIFIED BY '$PASSW';


FLUSH PRIVILEGES;
">./mariadb_material/mdbScript.sql

mysql -u root < ./mariadb_material/mdbScript.sql
service mariadb stop
exec mysqld_safe