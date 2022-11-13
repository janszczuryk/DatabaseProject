#!/bin/bash
echo "Connect to database via CLI ..."

docker exec -it databaseproject_database_project_1 mysql -u root -pasdf -D gradebook
