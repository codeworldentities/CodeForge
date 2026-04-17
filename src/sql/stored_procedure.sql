-- Auto-generated: stored procedure v6012
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_6012 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6012_name
    ON stored_procedure_6012(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6012_created
    ON stored_procedure_6012(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_6012 (name, email)
VALUES
    ('item_0', 'val_0_6012'),
    ('item_1', 'val_1_6012'),
    ('item_2', 'val_2_6012'),
    ('item_3', 'val_3_6012');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_6012_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_6012
GROUP BY name
ORDER BY total DESC;
