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

INSERT INTO categoria (nome) VALUES ('Primo piatto');
INSERT INTO categoria (nome) VALUES ('Secondo piatto');
INSERT INTO categoria (nome) VALUES ('Bibita');

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Risotto allo zafferano','Risotto allo zafferano',1);

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Risotto ai funghi','Risotto ai funghi',1);

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Grigliata','Grigliata',2);

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Costata','Costata',2);

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Acqua naturale 75cl','Acqua naturale 75cl',3);

INSERT INTO cibo (nome, descrizione, id_categoria) 
VALUES ('Acqua frizzante 75cl','Acqua frizzante 75cl',3);



