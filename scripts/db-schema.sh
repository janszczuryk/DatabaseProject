#!/bin/bash
echo "Create database schema ..."

DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
source "$DIR/../.env"
docker exec -i dbp-mariadb-container mysql -u"root" -p"$MYSQL_ROOT_PASSWORD" -D "$MYSQL_DATABASE" < ./sql/schema-create.sql
