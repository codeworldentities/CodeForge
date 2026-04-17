-- Auto-generated: migration script v9298
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_9298 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_9298_name
    ON migration_script_9298(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_9298_created
    ON migration_script_9298(created_at DESC);

-- Seed data
INSERT INTO migration_script_9298 (name, score)
VALUES
    ('item_0', 'val_0_9298'),
    ('item_1', 'val_1_9298'),
    ('item_2', 'val_2_9298'),
    ('item_3', 'val_3_9298'),
    ('item_4', 'val_4_9298'),
    ('item_5', 'val_5_9298'),
    ('item_6', 'val_6_9298'),
    ('item_7', 'val_7_9298'),

-- View
CREATE OR REPLACE VIEW v_migration_script_9298_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_9298
GROUP BY name
ORDER BY total DESC;
