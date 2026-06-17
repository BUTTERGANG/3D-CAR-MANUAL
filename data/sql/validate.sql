-- Validation Queries for 3D-CAR-MANUAL Database
-- Run against Neon DB: psql $DATABASE_URL -f data/sql/validate.sql

-- Query 1: Forward join — Oil Filter → Procedures + Specs
SELECT 'Q1: Oil Filter → Procedures' as test;
SELECT s.name as system, ss.name as subsystem, c.name as component,
       c.slug, c.mesh_name, c.is_serviceable,
       mt.name as procedure_name, mt.difficulty,
       mt.interval_miles, mt.interval_months, mt.charm_li_url
FROM components c
JOIN subsystems ss ON c.subsystem_id = ss.id
JOIN systems s ON c.system_id = s.id
LEFT JOIN maintenance_tasks mt ON mt.component_id = c.id
WHERE c.slug = 'oil-filter';

-- Query 2: Reverse join — Procedure → Component → System
SELECT 'Q2: Procedure → Component → System' as test;
SELECT mt.name as procedure_name, mt.charm_li_url,
       c.name as component_name, c.slug, c.is_serviceable,
       ss.name as subsystem_name, s.name as system_name
FROM maintenance_tasks mt
JOIN components c ON mt.component_id = c.id
JOIN subsystems ss ON c.subsystem_id = ss.id
JOIN systems s ON c.system_id = s.id
WHERE mt.name LIKE '%Coolant%';

-- Query 3: Specifications → Components
SELECT 'Q3: Specifications' as test;
SELECT sp.spec_type, sp.name, sp.value, sp.unit, sp.notes,
       c.name as component_name, c.slug
FROM specifications sp
LEFT JOIN components c ON sp.component_id = c.id
ORDER BY sp.spec_type, sp.name;

-- Query 4: Orphan check
SELECT 'Q4: Orphan Check' as test;
SELECT mt.id, mt.name, mt.component_id
FROM maintenance_tasks mt
LEFT JOIN components c ON mt.component_id = c.id
WHERE c.id IS NULL;

-- Query 5: Counts by system
SELECT 'Q5: Counts by System' as test;
SELECT s.name, COUNT(DISTINCT c.id) as components,
       COUNT(DISTINCT mt.id) as procedures
FROM systems s
LEFT JOIN components c ON c.system_id = s.id
LEFT JOIN maintenance_tasks mt ON mt.component_id = c.id
GROUP BY s.id ORDER BY s.sort_order;

-- Query 6: JSONB field integrity
SELECT 'Q6: JSONB Check' as test;
SELECT mt.name,
       jsonb_array_length(mt.tools_needed) as tool_count,
       jsonb_array_length(mt.parts_needed) as part_count,
       jsonb_array_length(mt.steps) as step_count
FROM maintenance_tasks mt
LIMIT 2;
