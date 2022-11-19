-- CREATE NEW DATABASE USER
CREATE USER 'app'@'localhost' IDENTIFIED BY 'app-user-password';
CREATE USER 'app-test'@'localhost' IDENTIFIED BY 'app-test-user-password';

-- PERMIT DATABASE USER WITH GIVEN PRIVILEGES
-- POSSIBLE PRIVILEGES:
-- 1. CREATE
-- 2. DROP
-- 3. DELETE
-- 4. INSERT
-- 5. SELECT
-- 6. UPDATE
-- 7. GRANT OPTION
-- 8. ALL PRIVILEGES

GRANT ALL PRIVILEGES ON gradebook.* TO 'app'@'localhost';
GRANT ALL PRIVILEGES ON gradebook_test.* TO 'app-test'@'localhost';

FLUSH PREVILEGES;

-- SHOW CURRENT DATABSE USERS
SELECT host, user FROM mysql.user;

SELECT host, user, command FROM information_schema.processlist;

-- SHOW CURRENTLY LOGGED IN USER
SELECT current_user();

-- SHOW PERMISSIONS OF CURRENT DATABASE USERS
SHOW GRANTS FOR 'app-test';

SHOW GRANTS FOR 'root';

