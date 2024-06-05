
#exerciece 1


CREATE TABLE utilisateur (
    id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom_utilisateur VARCHAR(100),
    prenom_utilisateur VARCHAR(100),
    email_utilisateur VARCHAR(255)
);

-- Insertion des données dans la table utilisateur
INSERT INTO utilisateur (id_utilisateur, nom_utilisateur, prenom_utilisateur, email_utilisateur)
VALUES ('848484', 'Louis', 'Leroy', 'LouisLeroy@email.com'),
('448498', 'Alice', 'Moreau',  'AliceMoreau@email.com'),
('123784', 'Gabriel', 'Rousseau', 'GabrielRousseau@email.com'),
('978784', 'Lea', 'Lambert', 'LeaLambert@email.com'),
('930158', 'Noah', 'Petit', 'NoahPetit@email.com'),
('753159', 'Manon', 'Garcia', 'ManonGarcia@email.com'),
('789455', 'Arthur', 'Bernard', 'ArthurBernard@email.com'),
('753109', 'Leo', 'Martin', 'LeoMartin@email.com'),
('709455', 'Chloe', 'Dubois', 'ChloeDubois@email.com'),
('742873', 'mat', 'lois', 'matlois@email.com');


-- Création de la table reservation
CREATE TABLE reservation (
    id_reservation INT PRIMARY KEY NOT NULL,
    date_emprunt DATE,
    date_remise DATE,
    quantite_demande INT,
    idutilisateur INT,
    FOREIGN KEY (idutilisateur) REFERENCES utilisateur(id_utilisateur)
);

-- Insertion des données dans la table reservation
INSERT INTO reservation (id_reservation, date_emprunt, date_remise, quantite_demande, idutilisateur) 
VALUES (1, '2024-05-01', '2024-05-10', 2, '848484'),
(2, '2024-05-03', '2024-05-08', 1, '448498'),
(3, '2024-05-05', '2024-05-15', 3, '123784'),
(4, '2024-05-07', '2024-05-12', 1, '978784'),
(5, '2024-05-09', '2024-05-14', 4, '930158'),
(6, '2024-05-10', '2024-05-14', 5, '753159'),
(7, '2024-05-20', '2024-05-22', 6, '789455'),
(8, '2024-05-18', '2024-05-24', 7, '753109'),
(9, '2024-05-22', '2024-05-26', 8, '709455'),
(10, '2024-05-23', '2024-05-24', 9, '742873');


CREATE TABLE materiel (
    id_Materiel INT PRIMARY KEY NOT NULL,
    description_materiel VARCHAR(500),
    Categorie_materiel VARCHAR(100),
    Nom_materiel VARCHAR(100),
    Quantite_disponible INT,
    idreservation INT,
    FOREIGN KEY (idreservation) REFERENCES reservation(id_reservation)
);

-- Insertion des données dans la table materiel
INSERT INTO materiel (id_Materiel, description_materiel, Categorie_materiel, Nom_materiel, Quantite_disponible, idreservation)
VALUES ('0', 'description000', 'catégorie 0', 'Marteau', '2', '1'),
('1', 'description001', 'catégorie 1', 'Tournevis', '5', '2'),
('2', 'description002', 'catégorie 2', 'Pince', '6', '3'),
('3', 'description003', 'catégorie 3', 'MCU', '20', '4'),
('4', 'description004', 'catégorie 4', 'RP', '40', '5'),
('5', 'description005', 'catégorie 5', 'cable', '12', '6'),
('6', 'description006', 'catégorie 6', 'oscilo', '30', '7'),
('7', 'description007', 'catégorie 7', 'multimetre', '10', '8'),
('8', 'description008', 'catégorie 8', 'wat', '12', '9'),
('9', 'description009', 'catégorie 9', 'convertisseur', '9', '10');


