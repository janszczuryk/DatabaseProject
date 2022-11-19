#!/bin/bash

DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
source "$DIR/../.env"

DATABASE="$MYSQL_DATABASE"
if [[ -n "$1" ]]; then
    DATABASE="${DATABASE}_$1"
fi

TIME=$(date +"%Y%m%d-%H%M%S")
DUMP_PATH="$DIR/../sql/dump-$DATABASE-$TIME.sql"

echo "Exporting database ($DATABASE)..."

docker exec -i dbp-mariadb-container mysqldump -u"root" -p"$MYSQL_ROOT_PASSWORD" "$DATABASE" > "$DUMP_PATH" \
&& echo "Saved file: $DUMP_PATH" \
|| echo "Failed to save file: $DUMP_PATH"

