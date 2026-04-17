-- Auto-generated: migration script v3659
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_3659 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    description TEXT,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_3659_name
    ON migration_script_3659(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_3659_created
    ON migration_script_3659(created_at DESC);

-- Seed data
INSERT INTO migration_script_3659 (name, status)
VALUES
    ('item_0', 'val_0_3659'),
    ('item_1', 'val_1_3659'),
    ('item_2', 'val_2_3659'),
    ('item_3', 'val_3_3659'),
    ('item_4', 'val_4_3659'),
    ('item_5', 'val_5_3659'),
    ('item_6', 'val_6_3659');

-- View
CREATE OR REPLACE VIEW v_migration_script_3659_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_3659
GROUP BY name
ORDER BY total DESC;
