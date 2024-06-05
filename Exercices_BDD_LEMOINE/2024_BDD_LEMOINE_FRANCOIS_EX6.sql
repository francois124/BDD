#Exercie n°6

#On supprime les reservations des utilisateurs 123784 et 753455

DELETE FROM reservation
WHERE reservation.id_reservation = 3 or reservation.id_reservation = 8;

#Notre objectif est de suprimer l'utilisateur appelé mat. Il est nécessaire de supprimer tout d'abord les réservations de l'utilisateur Mat.
#On procède à cette action car il y a des clés étrangères sur la table de réservation.

DELETE FROM reservation
WHERE idutilisateur = (SELECT id_utilisateur FROM utilisateur WHERE nom_utilisateur = 'mat');

#Par la suite, l'utilisateur mat est supprimé de la table Utilisateur. 

DELETE FROM utilisateur WHERE nom_utilisateur = 'Noah';

