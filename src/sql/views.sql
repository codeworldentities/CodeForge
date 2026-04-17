-- Auto-generated: views — views v8517
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_8517 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_8517_name
    ON views_—_views_8517(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_8517_created
    ON views_—_views_8517(created_at DESC);

-- Seed data
INSERT INTO views_—_views_8517 (name, score)
VALUES
    ('item_0', 'val_0_8517'),
    ('item_1', 'val_1_8517'),
    ('item_2', 'val_2_8517'),
    ('item_3', 'val_3_8517'),
    ('item_4', 'val_4_8517'),
    ('item_5', 'val_5_8517'),
    ('item_6', 'val_6_8517'),
    ('item_7', 'val_7_8517'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_8517_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_8517
GROUP BY name
ORDER BY total DESC;
