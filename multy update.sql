UPDATE commande
SET commande_id = '2001'
WHERE ligne_id IN (1, 2);

UPDATE commande
SET commande_id = '2002'
WHERE ligne_id = 3;

UPDATE commande
SET commande_id = '2003'
WHERE ligne_id = 4;

UPDATE commande
SET commande_id = '2004'
WHERE ligne_id = 5;
