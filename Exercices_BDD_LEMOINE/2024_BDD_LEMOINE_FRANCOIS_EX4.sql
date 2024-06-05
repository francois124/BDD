#exercice n°4

#Demande d'agrégation afin de déterminer le nombre total de réservations réalisées sur une période spécifique :

SELECT COUNT(*) AS nombre_total_de_reservation #AS permet de renommer la colonne qui va afficher le resultat de la requete
FROM reservation
WHERE date_emprunt BETWEEN '2024-05-01' AND '2024-07-01'; #


#Requête d'agrégation afin de déterminer le nombre d'utilisateurs ayant utilisé un matériel spécifique :

SELECT COUNT(idutilisateur) AS Nombre_Utilisateur #Cette requette permet de compter les utilisateurs qui ont empreintés un materiel de type 1
FROM reservation
WHERE quantite_demande <= 5; 