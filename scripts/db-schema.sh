#!/bin/bash
echo "Create database schema ..."

docker exec -i databaseproject_database_project_1 mysql -u root -pasdf -D gradebook < /sql/schema-create.sql
