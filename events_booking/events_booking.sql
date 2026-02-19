CREATE DATABASE events;


--Creation de la table clients

CREATE TABLE clients (
    id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_client VARCHAR(20) NOT NULL,
    prenom_client VARCHAR(40) NOT NULL,
    email_client VARCHAR(100) UNIQUE NOT NULL
);

--Ajouter des clients

INSERT INTO clients(nom_client,prenom_client,email_client)
VALUES ("toto","tata","toto@gmail.com"),
("jean","Marc","jeanmarc@gmail.com"),
("jean","Dupont","jeandupont@gmail.com"),
("claude","gemini","claudegemini@gmail.com");

--