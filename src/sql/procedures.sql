-- Auto-generated: procedures — procedures v5976
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_5976 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5976_name
    ON procedures_—_procedures_5976(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_5976_created
    ON procedures_—_procedures_5976(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_5976 (name, metadata)
VALUES
    ('item_0', 'val_0_5976'),
    ('item_1', 'val_1_5976'),
    ('item_2', 'val_2_5976'),
    ('item_3', 'val_3_5976'),
    ('item_4', 'val_4_5976'),
    ('item_5', 'val_5_5976');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_5976_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_5976
GROUP BY name
ORDER BY total DESC;
