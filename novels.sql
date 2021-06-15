CREATE DATABASE novels;

CREATE USER 'novels'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

GRANT ALL novels.* TO 'novels'@'localhost';

USE novels;

