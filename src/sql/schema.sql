-- Auto-generated: schema — database schema definition v7520
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_7520 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    description TEXT,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7520_name
    ON schema_—_database_schema_definition_7520(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_7520_created
    ON schema_—_database_schema_definition_7520(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_7520 (name, priority)
VALUES
    ('item_0', 'val_0_7520'),
    ('item_1', 'val_1_7520'),
    ('item_2', 'val_2_7520'),
    ('item_3', 'val_3_7520'),
    ('item_4', 'val_4_7520');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_7520_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_7520
GROUP BY name
ORDER BY total DESC;
