From mysql:latest

Env MYSQL_ROOT_PASSWORD=root

COPY ./fastdelivery.sql /docker-entrypoint-initdb.d