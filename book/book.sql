--Creer la base de donné
CREATE DATABASE book;

--Création de la table fournisseurs
CREATE TABLE fournisseurs(
    id_fournisseur INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_fournisseur VARCHAR(25) NOT NULL,
    prenom_fournisseur VARCHAR(25) NOT NULL,
    adresse_fournisseur VARCHAR(40) NOT NULL
);

--enregistrer les fournisseurs
INSERT INTO fournisseurs(nom_fournisseur,prenom_fournisseur,adresse_fournisseur) VALUES
("jean","lepain","je@gmail.com")
("freid","lapaix","freid@gmail.com")
("junior","lebox","jl@gmail.com")

--Creation de la table stocks
CREATE TABLE stocks(
    id_stock INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantite_actuelle INT NOT NULL
);

--Inserer des stocks
INSERT INTO stocks(50,30,80,22)

--Création de la table livres
CREATE TABLE livres(
    id_livre INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(20) NOT NULL,
    auteur VARCHAR(20) NOT NULL,
    editeur VARCHAR(20) NOT NULL,
    genre VARCHAR(20) NOT NULL,
    prix INT NOT NULL,
    id_stock INT NOT NULL,
    FOREIGN KEY id_stock REFERENCES stocks(id_stock)
);

--Ajouter des livres 

INSERT INTO livres VALUES 
("Le petit prince"," Antoine de Saint-Exupéry","Oreilly","5000",1)
("Un rien peut tout changer","James Clear","Oreilly","15000",2)
("Atomic Habit","James clear","Oreilly","14000",3)
("Think python","Allen B. Downey","Oreilly","12000",4)

