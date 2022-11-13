#!/bin/bash
echo "Connect to Database via CLI"

docker exec -it databaseproject_database_project_1 mysql -u root -pasdf -D gradebook
