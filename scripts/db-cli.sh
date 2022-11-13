#!/bin/bash
echo "Connect to database via CLI ..."

docker exec -it dbp-mariadb-container mysql -u root -pasdf -D gradebook
