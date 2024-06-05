#On cree la table disponibilite
 
CREATE TABLE disponibilite (
    id_disponibilite INT PRIMARY KEY AUTO_INCREMENT,
    idmateriel INT,
    date_debut DATE,
    date_fin DATE,
    FOREIGN KEY (idmateriel) REFERENCES materiel(idmateriel) #on cree aussi le cle etrangere vers la table materiel
);


ALTER TABLE reservation
ADD COLUMN id_disponibilite INT,
ADD CONSTRAINT fk_reservation_disponibilite FOREIGN KEY (id_disponibilite) REFERENCES disponibilite(id_disponibilite);


ALTER TABLE reservation
ADD COLUMN id_disponibilite INT,
ADD CONSTRAINT fk_reservation_disponibilite FOREIGN KEY (id_disponibilite) REFERENCES disponibilite(id_disponibilite);


-- Ajoute la colonne IdDisponibilite à la table Reservations
ALTER TABLE Reservation
ADD COLUMN IdDisponibilite INT,
-- Définit la contrainte de clé étrangère vers la table Disponibilite
ADD CONSTRAINT fk_disponibilite FOREIGN KEY (IdDisponibilite) REFERENCES Disponibilite(IdDisponibilite);



DELIMITER //

CREATE TRIGGER before_update_reservation
BEFORE UPDATE ON reservation
FOR EACH ROW 

BEGIN
    DECLARE available INT;

    #-- Vérification de la disponibilité du matériel
    SELECT COUNT(*) INTO available
    FROM disponibilite
    WHERE id_materiel = NEW.id_utilisateur
      AND NEW.date_emprunt BETWEEN date_debut AND date_fin
      AND NEW.date_remise BETWEEN date_debut AND date_fin;

    #-- Si le matériel n'est pas disponible, déclencher une erreur
    IF available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Le matériel n est pas disponible pour les dates spécifiées';
    END IF;
END;

//
