#!/bin/bash
echo "Connect to database via CLI ..."

DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
source "$DIR/../.env"

docker exec -it dbp-mariadb-container \
	mysql -u"root" -p"$MYSQL_ROOT_PASSWORD" -D "$MYSQL_DATABASE"
