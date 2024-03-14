CREATE TABLE produit (
produit_id INTEGER PRIMARY KEY,
nom_produit VARCHAR(255) UNIQUE,
category VARCHAR(50) NOT NULL,
prix NUMERIC(10,2) CHECK (prix>=0)
);

CREATE TABLE commandes (

ligne_id SERIAL PRIMARY KEY,

client_id INTEGER NOT NULL,

produit_id INTEGER NOT NULL,

quantite INTEGER NOT NULL,

pris_total DECIMAL(10,2),
	
FOREIGN KEY (client_ID) REFERENCES clients(client_ID),

FOREIGN KEY (produit_id) REFERENCES PRODUIT(produit_id)	
	

);