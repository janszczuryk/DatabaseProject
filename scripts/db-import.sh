#!/bin/bash

DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
source "$DIR/../.env"

DATABASE="$1"
DUMP_PATH="$2"
if [[ -z "$DATABASE" || -z "$DUMP_PATH" ]]; then
    echo -e "USAGE:\n db-import.sh [DATABASE] [DUMP PATH]"
    exit 1;
fi

echo "Importing to database ($DATABASE)..."

docker exec -i dbp-mariadb-container \
	mysql -u"root" -p"$MYSQL_ROOT_PASSWORD" -D "$DATABASE" < "$DUMP_PATH" \
	&& echo "Imported file: $DUMP_PATH" \
	|| echo "Failed to import file: $DUMP_PATH"

