-- Auto-generated: view creation v2622
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_2622 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_2622_name
    ON view_creation_2622(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_2622_created
    ON view_creation_2622(created_at DESC);

-- Seed data
INSERT INTO view_creation_2622 (name, priority)
VALUES
    ('item_0', 'val_0_2622'),
    ('item_1', 'val_1_2622');

-- View
CREATE OR REPLACE VIEW v_view_creation_2622_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_2622
GROUP BY name
ORDER BY total DESC;
