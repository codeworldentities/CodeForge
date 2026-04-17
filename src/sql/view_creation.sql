-- Auto-generated: view creation v8786
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_8786 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_8786_name
    ON view_creation_8786(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_8786_created
    ON view_creation_8786(created_at DESC);

-- Seed data
INSERT INTO view_creation_8786 (name, counter)
VALUES
    ('item_0', 'val_0_8786'),
    ('item_1', 'val_1_8786'),
    ('item_2', 'val_2_8786'),
    ('item_3', 'val_3_8786'),
    ('item_4', 'val_4_8786'),
    ('item_5', 'val_5_8786'),
    ('item_6', 'val_6_8786'),
    ('item_7', 'val_7_8786');

-- View
CREATE OR REPLACE VIEW v_view_creation_8786_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_8786
GROUP BY name
ORDER BY total DESC;
