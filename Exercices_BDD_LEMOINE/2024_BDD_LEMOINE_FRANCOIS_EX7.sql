#Exercice n°7 

#Afficher tous les utilisateurs ayant emprunté au moins un équipement 

SELECT utilisateur.* #on affiche l'ensemble des informations des utilisateurs
FROM utilisateur
JOIN reservation ON utilisateur.id_utilisateur = reservation.idutilisateur; #on selectionne ensuite les reservations qui ont été effectuées par les utilisateurs


#Afficher les équipements n’ayant jamais été empruntés 

SELECT * 
FROM materiel #cette requête recuperes les équipements qui ont leurs Id_materiel qui ne sont pas présentent dans la liste des identifiants de matériel empruntés
WHERE idreservation NOT IN (SELECT id_reservation FROM reservation);


#Afficher les équipements ayant été empruntés plus de 3 fois 

SELECT materiel.*, COUNT(reservation.id_reservation) AS NombreEmprunts #on calcul le nombre d'emprunts pour chaque équipement et on affiche les données de la table materiel 
FROM Materiel
JOIN reservation ON materiel.idreservation = Reservation.id_reservation #on utilise la cle etrangere idmateriel et la cle primaire Id_materiel pour associer chaque emprunt à son équipement correspondant 
GROUP BY materiel.id_Materiel #on regroupe les reservations qui ont le meme équipement 
HAVING COUNT(reservation.id_reservation) > 3; #enfin on filtre les résultats pour ne retourner que les équipements qui ont été empruntés plus de 3 fois



#Afficher le nombre d’emprunt pour chaque utilisateur 

SELECT utilisateur.nom_utilisateur, utilisateur.prenom_utilisateur, COUNT(reservation.id_reservation) AS NombreEmprunts 
#Les noms et prénoms des utilisateurs sont sélectionnés et les nombres d'emprunts sont comptés dans NombreEmprunts

FROM utilisateur
right JOIN reservation ON utilisateur.id_utilisateur = reservation.idutilisateur 

#Chaque utilisateur est lié à ses réservations. Avec l'aide de LEFT JOIN, il est possible d'inclure les utilisateurs même s'ils ne sont pas réservés
GROUP BY utilisateur.id_utilisateur; #Finalement les résultats sont regroupés par utilisateur afin de regrouper toutes les réservations d'un même utilisateur




