-- Auto-generated: view creation v635
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_635 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_635_name
    ON view_creation_635(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_635_created
    ON view_creation_635(created_at DESC);

-- Seed data
INSERT INTO view_creation_635 (name, priority)
VALUES
    ('item_0', 'val_0_635'),
    ('item_1', 'val_1_635'),
    ('item_2', 'val_2_635'),
    ('item_3', 'val_3_635'),
    ('item_4', 'val_4_635'),
    ('item_5', 'val_5_635'),
    ('item_6', 'val_6_635'),
    ('item_7', 'val_7_635'),

-- View
CREATE OR REPLACE VIEW v_view_creation_635_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_635
GROUP BY name
ORDER BY total DESC;
