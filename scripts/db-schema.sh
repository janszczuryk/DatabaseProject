#!/bin/bash
echo "Create database schema ..."

docker exec -i dbp-mariadb-container mysql -u root -pasdf -D gradebook < ./sql/schema-create.sql
