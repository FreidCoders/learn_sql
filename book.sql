--Creer la base de donné
CREATE DATABASE book;

--Création de la table fournisseurs
CREATE TABLE fournisseurs(
    id_fournisseur INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom_fournisseur VARCHAR(25) NOT NULL,
    prenom_fournisseur VARCHAR(25) NOT NULL,
    adresse_fournisseur VARCHAR(25)
);

--Cre
