#exercice n°2

SELECT * FROM reservation WHERE idutilisateur = 978784 AND date_emprunt = '2024-05-07'; #Nous récupérons toutes les réservations qui débutent le 7 mai 2024 pour l’utilisateur 97878

SELECT * FROM materiel WHERE Quantite_disponible >= 5;#Cette requête sélectionne tous les matériels disponibles pour la réservation dont la quantité est supérieure à 5

SELECT * FROM utilisateur WHERE prenom_utilisateur = 'Leroy' AND nom_utilisateur = 'Alice' OR prenom_utilisateur = 'Rousseau' ORDER BY id_utilisateur; #Cette requête récupère toutes les informations sur les utilisateurs Leroy et Alice trié par leur numero