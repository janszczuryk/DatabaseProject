#!/bin/bash
echo "Create database schema ..."

docker exec -i mariadb-container mysql -u root -pasdf -D gradebook < ./sql/schema-create.sql
