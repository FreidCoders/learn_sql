CREATE DATABASE portfolio;

CREATE TABLE user(
    id_user INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    bio VARCHAR(255) NOT NULL,
    titre_pro VARCHAR(255) NOT NULL,
    photo VARCHAR(255) NOT NULL
);

INSERT INTO user (nom, prenom, email, bio, titre_pro, photo) VALUES 
('Durand', 'Sophie', 'sophie.d@email.com', 'Experte en UX Design.', 'UI/UX Designer', 'sophie.jpg'),
('Leroy', 'Thomas', 't.leroy@email.com', 'Spécialiste Data Science.', 'Data Analyst', 'thomas.jpg');


CREATE TABLE competences(
    id_comp INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    niveau INT NOT NULL,
    icon_url VARCHAR(255) NOT NULL,
    id_user INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

INSERT INTO competences (type, niveau, icon_url, id_user) VALUES 
('HTML/CSS', 95, 'html.png', 1),
('JavaScript', 80, 'js.png', 1),
('Python', 70, 'py.png', 1),
('Git', 85, 'git.png', 1);


CREATE TABLE project(
    id_proj INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    lien_demo VARCHAR(255) NOT NULL,
    date_realisation DATE NOT NULL,
    id_user INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

INSERT INTO project (titre, description, image_url, lien_demo, date_realisation, id_user) VALUES 
('Portfolio Perso', 'Mon premier site vitrine.', 'thumb1.jpg', 'site1.com', '2023-01-10', 1),
('API Météo', 'Service de prévision en temps réel.', 'thumb2.jpg', 'api-meteo.fr', '2023-06-22', 1),
('Clone Netflix', 'Entrainement au design responsive.', 'thumb3.jpg', 'clone.net', '2024-02-15', 1);


CREATE TABLE message(
    id_message INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_exp VARCHAR(255) NOT NULL,
    mail_exp VARCHAR(255) NOT NULL,
    sujet VARCHAR(255) NOT NULL,
    message TEXT,
    date_envoi DATE NOT NULL,
    id_user INT NOT NULL,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

INSERT INTO message (nom_exp, mail_exp, sujet, message, date_envoi, id_user) VALUES 
('Julie', 'julie@hr.com', 'Recrutement', 'Disponible pour un entretien ?', '2024-05-01', 1),
('Kevin', 'kev@dev.io', 'Bug report', 'J’ai trouvé un souci sur votre démo.', '2024-05-02', 1),
('Lucas', 'l.pro@outlook.fr', 'Devis', 'Quel est votre tarif journalier ?', '2024-05-03', 1);
