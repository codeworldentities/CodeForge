-- Auto-generated: table creation v2807
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_2807 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_2807_name
    ON table_creation_2807(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_2807_created
    ON table_creation_2807(created_at DESC);

-- Seed data
INSERT INTO table_creation_2807 (name, metadata)
VALUES
    ('item_0', 'val_0_2807'),
    ('item_1', 'val_1_2807');

-- View
CREATE OR REPLACE VIEW v_table_creation_2807_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_2807
GROUP BY name
ORDER BY total DESC;
