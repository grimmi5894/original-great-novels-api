CREATE DATABASE novels;

CREATE USER 'novels'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

GRANT ALL novels.* TO 'novels'@'localhost';

USE novels;

CREATE TABLE genres (
  id INT auto_increment,
  name VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE authors (
  id INT auto_increment,
  nameFirst VARCHAR(255) NOT NULL,
  nameLast VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE novels (
  id INT auto_increment,
  title VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id),
  FOREIGN KEY(authorId) REFERENCES authors(id)
);

CREATE TABLE novelsGenres (
  novelId INT,
  genreId INT,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(novelId, genreId),
  FOREIGN KEY(novelId) REFERENCES novels(id),
  FOREIGN KEY(genreId) REFERENCES genres(id)
)

INSERT INTO authors (nameFirst, nameLast) VALUES ('Bram', 'Stoker');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Oscar', 'Wilde');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Alice', 'Walker');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Leo', 'Tolstoy');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Charles', 'Dickens');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Arthur', 'Miller');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Alexandre', 'Dumas');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Arthur Conan', 'Doyle');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Robert Louis', 'Stevenson');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Fyodor', 'Dostoyevsky');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Agatha', 'Christie');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Ray', 'Bradbury');
INSERT INTO authors (nameFirst, nameLast) VALUES ('George', 'Orwell');
INSERT INTO authors (nameFirst, nameLast) VALUES ('H.G.', 'Wells');
INSERT INTO authors (nameFirst, nameLast) VALUES ('Chinua', 'Achebe');