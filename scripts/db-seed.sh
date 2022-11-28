#!/bin/bash
echo "Seeding the database... (currently used in the app)"

DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
source "$DIR/../.env"

docker exec -it dbp-app-container \
php artisan db:seed
