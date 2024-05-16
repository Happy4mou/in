
FROM debian:11

WORKDIR /MriaDB

RUN apt-get update && \
    apt-get install -y mariadb-server
RUN mkdir mariadb_material

COPY ./MariaDB_mareial/* mariadb_material/
COPY ./MariaDB_mareial/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x ./mariadb_material/run.sh

CMD [ "bash" ,"./mariadb_material/run.sh"]