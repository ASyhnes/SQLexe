CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE ma_table (
    mon_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    -- Autres colonnes ici
);
