alter table clients drop constraint if exists clients_email_client_check;
alter table clients alter column email_client SET DEFAULT 'non communiqué';
INSERT INTO clients (client_id, nom_client, carte_fidelite)  values (106, 'François Petit',TRUE)