-- 3D Car Manual — Database Schema
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- PostgreSQL / SQLite compatible
-- NOTE: SERIAL replaced with INTEGER PRIMARY KEY for SQLite compatibility
--       (SERIAL is PostgreSQL-specific and doesn't auto-increment in SQLite)

CREATE TABLE systems (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    icon VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE subsystems (
    id INTEGER PRIMARY KEY,
    system_id INTEGER NOT NULL REFERENCES systems(id) ON DELETE CASCADE,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(system_id, slug)
);

CREATE TABLE components (
    id INTEGER PRIMARY KEY,
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

CREATE TABLE maintenance_tasks (
    id INTEGER PRIMARY KEY,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    interval_miles INTEGER,
    interval_months INTEGER,
    difficulty VARCHAR(20) CHECK (difficulty IN ('easy', 'medium', 'hard', 'professional')),
    estimated_time_minutes INTEGER,
    tools_needed JSON DEFAULT '[]',
    parts_needed JSON DEFAULT '[]',
    steps JSON DEFAULT '[]',
    video_url TEXT,
    charm_li_url TEXT,
    tsb_refs JSON DEFAULT '[]',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_tasks_component ON maintenance_tasks(component_id);
CREATE INDEX idx_tasks_difficulty ON maintenance_tasks(difficulty);

CREATE TABLE symptoms (
    id INTEGER PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    possible_causes JSON DEFAULT '[]',
    diagnostic_steps JSON DEFAULT '[]',
    severity VARCHAR(20) CHECK (severity IN ('low', 'medium', 'high', 'critical')),
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE dtcs (
    id INTEGER PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    possible_causes JSON DEFAULT '[]',
    diagnostic_steps JSON DEFAULT '[]',
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tsbs (
    id INTEGER PRIMARY KEY,
    tsb_number VARCHAR(50) NOT NULL UNIQUE,
    title VARCHAR(300) NOT NULL,
    description TEXT,
    system_id INTEGER REFERENCES systems(id) ON DELETE SET NULL,
    affected_components JSON DEFAULT '[]',
    date_issued DATE,
    charm_li_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE specifications (
    id INTEGER PRIMARY KEY,
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

CREATE TABLE user_maintenance_log (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    component_id INTEGER REFERENCES components(id) ON DELETE SET NULL,
    task_id INTEGER REFERENCES maintenance_tasks(id) ON DELETE SET NULL,
    date_performed DATE NOT NULL,
    mileage INTEGER,
    notes TEXT,
    cost DECIMAL(10, 2),
    parts_used JSON DEFAULT '[]',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_log_user ON user_maintenance_log(user_id);
CREATE INDEX idx_log_component ON user_maintenance_log(component_id);
CREATE INDEX idx_log_date ON user_maintenance_log(date_performed);

CREATE TABLE zones (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mesh_group VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE zone_systems (
    zone_id INTEGER REFERENCES zones(id) ON DELETE CASCADE,
    system_id INTEGER REFERENCES systems(id) ON DELETE CASCADE,
    PRIMARY KEY (zone_id, system_id)
);

CREATE TABLE zone_components (
    zone_id INTEGER REFERENCES zones(id) ON DELETE CASCADE,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    PRIMARY KEY (zone_id, component_id)
);

CREATE TABLE media (
    id INTEGER PRIMARY KEY,
    component_id INTEGER REFERENCES components(id) ON DELETE CASCADE,
    media_type VARCHAR(20) CHECK (media_type IN ('image', 'diagram', 'video', 'pdf')),
    url TEXT NOT NULL,
    caption TEXT,
    sort_order INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_media_component ON media(component_id);
