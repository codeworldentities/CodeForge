-- Auto-generated: complex query v5115
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_5115 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_5115_name
    ON complex_query_5115(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_5115_created
    ON complex_query_5115(created_at DESC);

-- Seed data
INSERT INTO complex_query_5115 (name, status)
VALUES
    ('item_0', 'val_0_5115'),
    ('item_1', 'val_1_5115'),
    ('item_2', 'val_2_5115'),
    ('item_3', 'val_3_5115'),
    ('item_4', 'val_4_5115');

-- View
CREATE OR REPLACE VIEW v_complex_query_5115_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_5115
GROUP BY name
ORDER BY total DESC;
