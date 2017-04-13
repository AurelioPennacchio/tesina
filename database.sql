CREATE TABLE user 
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(40) NOT NULL,
	password VARCHAR(40) NOT NULL 
);

CREATE TABLE informazioni 
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_utente INT UNSIGNED,
	nome VARCHAR(40) NOT NULL,
	cognome VARCHAR(40) NOT NULL,
	data_nascita DATE NOT NULL,
	FOREIGN KEY (id_utente) REFERENCES user(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE admin 
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL
);

CREATE TABLE cibo
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	descrizione TEXT NOT NULL,
	id_categoria INT UNSIGNED,
	FOREIGN KEY (id_categoria) REFERENCES categoria(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE categoria
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(30) NOT NULL
);





INSERT INTO user (email,password)
VALUES ('aurelio99819@gmail.com','balotelli45');



