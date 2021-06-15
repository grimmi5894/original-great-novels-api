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

INSERT INTO novels (title, authorId) VALUES ('Dracula',	1);
INSERT INTO novels (title, authorId) VALUES ('The Picture of Dorian Gray',	2);
INSERT INTO novels (title, authorId) VALUES ('The Color Purple',	3);
INSERT INTO novels (title, authorId) VALUES ('War and Peace',	4);
INSERT INTO novels (title, authorId) VALUES ('A Tale of Two Cities',	5);
INSERT INTO novels (title, authorId) VALUES ('The Crucible',	6)
INSERT INTO novels (title, authorId) VALUES ('The Three Musketeers',	7);
INSERT INTO novels (title, authorId) VALUES ('The Hound of the Baskervilles', 8);
INSERT INTO novels (title, authorId) VALUES ('The Strange Case of Dr. Jekyll and Mr. Hyde', 9);
INSERT INTO novels (title, authorId) VALUES ('Crime and Punishment',	10);
INSERT INTO novels (title, authorId) VALUES ('Murder on the Orient Express',	11);
INSERT INTO novels (title, authorId) VALUES ('Fahrenheit 451',	12);
INSERT INTO novels (title, authorId) VALUES ('Animal Farm',	13);
INSERT INTO novels (title, authorId) VALUES ('The Time Machine',	14);
INSERT INTO novels (title, authorId) VALUES ('Things Fall Apart',	15);

INSERT INTO genres (name) VALUES ('Adventure');
INSERT INTO genres (name) VALUES ('African Literature');
INSERT INTO genres (name) VALUES ('Crime');
INSERT INTO genres (name) VALUES ('Drama');
INSERT INTO genres (name) VALUES ('Dystopia');
INSERT INTO genres (name) VALUES ('Fantasy');
INSERT INTO genres (name) VALUES ('Fiction');
INSERT INTO genres (name) VALUES ('French Literature');
INSERT INTO genres (name) VALUES ('Gothic');
INSERT INTO genres (name) VALUES ('Historical Fiction');
INSERT INTO genres (name) VALUES ('Horror');
INSERT INTO genres (name) VALUES ('Mystery');
INSERT INTO genres (name) VALUES ('Plays');
INSERT INTO genres (name) VALUES ('Russian Literature');
INSERT INTO genres (name) VALUES ('Science Fiction');
INSERT INTO genres (name) VALUES ('Thriller');
INSERT INTO genres (name) VALUES ('Time Travel');
INSERT INTO genres (name) VALUES ('War');

