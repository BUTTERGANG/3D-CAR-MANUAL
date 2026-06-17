-- 3D Car Manual — Database Schema
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- PostgreSQL / SQLite compatible

-- ============================================================
-- 1. SYSTEMS
-- ============================================================
CREATE TABLE systems (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    icon VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 2. SUBSYSTEMS
-- ============================================================
CREATE TABLE subsystems (
    id SERIAL PRIMARY KEY,
    system_id INTEGER NOT NULL REFERENCES systems(id) ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(system_id, slug)
);

-- ============================================================
-- 3. COMPONENTS
-- ============================================================
CREATE TABLE components (
    id SERIAL PRIMARY KEY,
    subsystem_id INTEGER REFERENCES subsystems(id) ON DELETE SET NULL,
    system_id INTEGER NOT NULL REFERENCES systems(id) ON DELETE CASCADE,
    name VARCHAR(150) NOT NULL,
    slug VARCHAR(150) NOT NULL,
    description TEXT,
    location_description TEXT,
    part_number VARCHAR(50),
    diagram_url TEXT,
    charm_li_url TEXT,
    mesh_name VARCHAR(100),
    sort_order INTEGER DEFAULT 0,
    is_serviceable BOOLEAN DEFAULT true,
    is_clickable BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(system_id, slug)
);

CREATE INDEX idx_components_system ON components(system_id);
CREATE INDEX idx_components_subsystem ON components(subsystem_id);
CREATE INDEX idx_components_mesh ON components(mesh_name);

-- ============================================================
-- 4. MAINTENANCE TASKS
-- ============================================================
CREATE TABLE maintenance_tasks (
    id SERIAL PRIMARY KEY,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    interval_miles INTEGER,
    interval_months INTEGER,
    difficulty VARCHAR(20) CHECK (difficulty IN ('easy', 'medium', 'hard', 'professional')),
    estimated_time_minutes INTEGER,
    tools_needed JSONB DEFAULT '[]',
    parts_needed JSONB DEFAULT '[]',
    steps JSONB DEFAULT '[]',
    video_url TEXT,
    charm_li_url TEXT,
    tsb_refs JSONB DEFAULT '[]',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_tasks_component ON maintenance_tasks(component_id);
CREATE INDEX idx_tasks_difficulty ON maintenance_tasks(difficulty);

-- ============================================================
-- 5. SYMPTOMS (Diagnostic)
-- ============================================================
CREATE TABLE symptoms (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    possible_causes JSONB DEFAULT '[]',
    diagnostic_steps JSONB DEFAULT '[]',
    severity VARCHAR(20) CHECK (severity IN ('low', 'medium', 'high', 'critical')),
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 6. DIAGNOSTIC TROUBLE CODES
-- ============================================================
CREATE TABLE dtcs (
    id SERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    possible_causes JSONB DEFAULT '[]',
    diagnostic_steps JSONB DEFAULT '[]',
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 7. TECHNICAL SERVICE BULLETINS
-- ============================================================
CREATE TABLE tsbs (
    id SERIAL PRIMARY KEY,
    tsb_number VARCHAR(50) NOT NULL UNIQUE,
    title VARCHAR(300) NOT NULL,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    affected_components JSONB DEFAULT '[]',
    date_issued DATE,
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 8. SPECIFICATIONS
-- ============================================================
CREATE TABLE specifications (
    id SERIAL PRIMARY KEY,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    component_id INTEGER REFERENCES components(id) ON DELETE SET NULL,
    spec_type VARCHAR(30) CHECK (spec_type IN ('torque', 'capacity', 'dimension', 'pressure', 'gap', 'other')),
    name VARCHAR(200) NOT NULL,
    value VARCHAR(100),
    unit VARCHAR(30),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_specs_component ON specifications(component_id);

-- ============================================================
-- 9. USER MAINTENANCE LOG
-- ============================================================
CREATE TABLE user_maintenance_log (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    component_id INTEGER REFERENCES components(id) ON DELETE SET NULL,
    task_id INTEGER REFERENCES maintenance_tasks(id) ON DELETE SET NULL,
    date_performed DATE NOT NULL,
    mileage INTEGER,
    notes TEXT,
    cost DECIMAL(10, 2),
    parts_used JSONB DEFAULT '[]',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_log_user ON user_maintenance_log(user_id);
CREATE INDEX idx_log_component ON user_maintenance_log(component_id);
CREATE INDEX idx_log_date ON user_maintenance_log(date_performed);

-- ============================================================
-- 10. 3D ZONES (for Three.js click detection)
-- ============================================================
CREATE TABLE zones (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mesh_group VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Junction table: zones ↔ systems
CREATE TABLE zone_systems (
    zone_id INTEGER REFERENCES zones(id) ON DELETE CASCADE,
    system_id INTEGER REFERENCES systems(id) ON DELETE CASCADE,
    PRIMARY KEY (zone_id, system_id)
);

-- Junction table: zones ↔ components (for clickable sub-items)
CREATE TABLE zone_components (
    zone_id INTEGER REFERENCES zones(id) ON DELETE CASCADE,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    PRIMARY KEY (zone_id, component_id)
);

-- ============================================================
-- 11. MEDIA (images, diagrams, videos linked to components)
-- ============================================================
CREATE TABLE media (
    id SERIAL PRIMARY KEY,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    media_type VARCHAR(20) CHECK (media_type IN ('image', 'diagram', 'video', 'pdf')),
    url TEXT NOT NULL,
    caption TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_media_component ON media(component_id);
