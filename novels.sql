CREATE DATABASE novels;

CREATE USER 'novels'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

GRANT ALL novels.* TO 'novels'@'localhost';

USE novels;

CREATE TABLE genres (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);
