#!/bin/bash
echo "Create database schema ..."

source ../.env
docker exec -i dbp-mariadb-container mysql -u"root" -p"$MYSQL_ROOT_PASSWORD" -D "$MYSQL_DATABASE" < ./sql/schema-create.sql
