--Creation de la base de donné taskflow
CREATE DATABASE taskflow;

--creation de la table users
CREATE TABLE users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL
);

--Inserer des donnés dans la tables users
INSERT INTO users(id,firstname,lastname,email) VALUES
(1,'toto','tata','toto@gmail.com'),
(2,'junior','LEPONT','junior@gmail.com'),
(3,'luc','delacroix','lucdela@gmail.com'),
(4,'giraud','pierre','pierregiraud@gmail.com');

--Creation de la table tasks
CREATE TABLE tasks(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_users INT NOT NULL,
    --name_tasks VARCHAR(20) NOT NULL,
    roles VARCHAR(20) NOT NULL,
    date_limite VARCHAR(20),
    priorite VARCHAR(15) NOT NULL,
    commentaire TEXT NOT NULL,
    piece_jointe VARCHAR(15) NOT NULL,
    statut TEXT NOT NULL,
    FOREIGN KEY (id_users) REFERENCES  users(id)
);

--Inserer les donnés dans la table tasks
INSERT INTO tasks(id,id_users,roles,date_limite,priorite,commentaire,piece_jointe,statut) VALUES
(1,1,"createur","2025-01-07","Indispensable","Gestion du courrier électronique et physique","document_pdf","Ouvert"),
(2,2,"responsable","2025-01-06","Important","Planification des reunions et gestion des agendas","document2_docx","En Cours"),
(3,2,"responsable","2025-01-05","Confort","Saisie et classement des documents (factures, contrats)","document3.pdf","Validé"),
(4,3,"responsable","2025-01-06","Confort","Facturation, relance des paiements, suivi des fournisseurs.","document.pdf","Ouvert"),
(5,3,"responsable","2025-01-03","Indispensable","Préparation des éléments comptables et reporting financier.","document2.docx","En Cours"),
(6,4,"responsable","2025-01-03","Important","Gestion des notes de frais et des congés.","document3.pdf","Validé"),
(7,4,"createur","2025-01-07","Indispensable","Suivi des prospects et clients.","document.pdf","Ouvert"),
(8,3,"responsable","2025-01-02","Confort","Chiffrage et création de devis.","document2.docx","En Cours"),
(9,2,"responsable","2025-01-03","Indispensable","Analyse des performances clients.","document3.pdf","Validé"),
(10,2,"createur","2025-01-05","Confort","Rendez-vous clients (individuels ou groupés).","document.pdf","Ouvert"),
(11,3,"responsable","2025-01-06","Important","Planification et suivi des campagnes (réseaux sociaux, SEO).","document2.docx","En Cours"),
(12,3,"responsable","2025-01-06","Confort","Rédaction de contenus (articles, posts).","document3.pdf","Validé"),
(13,4,"createur","2025-01-07","Indispensable","Étude de marché et veille concurrentielle.","document.pdf","Ouvert"),
(14,3,"responsable","2025-01-06","Confort","Création de présentations. ","document2.docx","En Cours"),
(15,3,"responsable","2025-01-06","Important","Rédaction des descriptions de poste.","document3.pdf","Validé"),
(16,2,"createur","2025-01-07","Confort","Tri et évaluation des candidatures.","document.pdf","Ouvert"),
(17,2,"responsable","2025-01-06","Important","Organisation des processus de recrutement (entretiens, évaluations)","document2.docx","En Cours"),
(18,2,"responsable","2025-01-06","Confort","Élaboration de plans de développement des compétences.","document3.pdf","Validé"),
(19,1,"createur","2025-01-07","Important","Brainstorming et réunions de travail.","document.pdf","Ouvert"),
(20,2,"responsable","2025-01-06","Confort","Suivi des objectifs et planification des ressources.","document2.docx","En Cours");


--Modifier les donnees dans la table tasks en fonction de l'identifiant de l'user et de l'id de la tache
UPDATE tasks SET roles = "createur" WHERE id_users = 2 AND id = 2;
--Modifier les donnes dans la table en fonction de l'identifiant user
UPDATE tasks SET roles = "createur" WHERE id_users = 2;
--Supprimmer les donnes de la table tasks en fonction de l'identifiant de l'user et de l'id de la tache
DELETE FROM tasks WHERE id_users = 2 AND id = 1;
--Supprimer les données dans la table tasks en fonction de l'identifiant de la tache
DELETE FROM tasks WHERE id_users = 1;
--Une tâche (Affiche tout les taches) comporter une date limite, une priorité,role, des commentaires et éventuellement des pièces jointes
SELECT roles, date_limite,priorite,commentaire,piece_jointe FROM tasks;

