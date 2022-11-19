-- SHOW CURRENT DATABSE USERS
SELECT host, user FROM mysql.user;

SELECT host, user, command FROM information_schema.processlist;

-- SHOW CURRENTLY LOGGED IN USER
SELECT current_user();

-- SHOW PERMISSIONS OF CURRENT DATABASE USERS
SHOW GRANTS FOR 'user';

SHOW GRANTS FOR 'root';

