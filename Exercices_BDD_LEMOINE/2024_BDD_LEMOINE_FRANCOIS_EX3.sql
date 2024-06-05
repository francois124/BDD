#exercice n°3
#Requête de jointure sur les utilisateurs ayant effectué une réservation :

#Cette requête joint la table "Utilisateurs" avec la table "reservation" sur la clé étrangère "idutilisateur" dans latable "reservation" et la clé primaire "id_utilisateur" dans la table "Utilisateurs".
SELECT utilisateur.*, reservation.* 
FROM utilisateur
JOIN reservation ON utilisateur.id_utilisateur = reservation.idutilisateur; #Cette requete récupère toutes les colonnes des deux tables pour les utilisateurs qui ont fait une réservation.

#Cette requête permet de récupérer les informations sur le matériel emprunté par un utilisateur spécifique.

SELECT utilisateur.nom_utilisateur, utilisateur.prenom_utilisateur, reservation.* #Elle sélectionne le nom et le prénom de l'utilisateur, ainsi que toutes les colonnes de la table "reservation" pour les réservations de cet utilisateur.
FROM utilisateur
JOIN reservation ON utilisateur.id_utilisateur = reservation.idutilisateur 
JOIN materiel ON reservation.id_reservation = materiel.idreservation

#Cette requête joint les tables "Utilisateurs", "Reservation" et "Materiel" pour récupérer les informations sur le matériel emprunté par l'utilisateur 1
WHERE utilisateur.id_utilisateur = '848484';

