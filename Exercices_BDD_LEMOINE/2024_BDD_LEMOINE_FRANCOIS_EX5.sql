#exercice n°5

#Requête de changement de la quantité disponible d'un matériel suite à un emprunt 

UPDATE materiel
SET Quantite_disponible = Quantite_disponible - 1 #On va decrementer la quantite du materiel 1 de 1 
WHERE id_Materiel = 6;