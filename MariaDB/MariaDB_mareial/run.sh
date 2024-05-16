service mariadb start
mysql -u root < ./mariadb_material/mdbScript.sql
service mariadb stop
mysqld_safe