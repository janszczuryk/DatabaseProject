#!/bin/bash
echo "Connect to database via CLI ..."

source ../.env
docker exec -it dbp-mariadb-container mysql -u"root" -p"$MYSQL_ROOT_PASSWORD" -D "$MYSQL_DATABASE"
