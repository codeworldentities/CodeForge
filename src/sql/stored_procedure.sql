-- Auto-generated: stored procedure v7535
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_7535 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7535_name
    ON stored_procedure_7535(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7535_created
    ON stored_procedure_7535(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_7535 (name, is_active)
VALUES
    ('item_0', 'val_0_7535'),
    ('item_1', 'val_1_7535'),
    ('item_2', 'val_2_7535'),
    ('item_3', 'val_3_7535'),
    ('item_4', 'val_4_7535'),
    ('item_5', 'val_5_7535');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_7535_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_7535
GROUP BY name
ORDER BY total DESC;
