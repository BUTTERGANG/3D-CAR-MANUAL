-- Seed data: Maintenance Tasks — System 1: Engine, Cooling and Exhaust
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- Source: charm.li / Operation CHARM (Factory Service Manual)
-- Note: JSONB values use ::jsonb cast for PostgreSQL compatibility

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (41, 'Engine Oil and Filter Change', 'Drain engine oil, replace oil filter, and refill with fresh oil. Capacity: 5.5 quarts (5.2L) with filter.', 5000, 6, 'easy', 30,
    '["Socket set (15mm)", "Oil filter wrench", "Drain pan", "Funnel", "Jack and stands", "Gloves", "Shop towels"]'::jsonb,
    '["Engine oil filter (AC Delco PF-46)", "5W-30 engine oil - 5.5 quarts (dexos1 certified)"]'::jsonb,
    '["Raise vehicle on jack stands", "Place drain pan under oil filter", "Loosen filter, allow oil to drain", "Remove filter, keep upright", "Clean spillage", "Lubricate NEW filter gasket with oil", "Install filter, tighten to 30 Nm (22 lb ft)", "Remove drain plug, allow oil to drain", "Install drain plug, tighten to 20 Nm (15 lb ft)", "Lower vehicle", "Refill oil 5.5 quarts", "Start engine, inspect for leaks", "Check oil level"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Maintenance/Fluids/Engine%20Oil/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (10, 'Cooling System Drain and Fill', 'Drain and refill engine coolant. Use 50/50 DEX-COOL and clean water.', 60000, 60, 'medium', 60,
    '["GE-47716 Vac-N-Fill Tool", "J 26568 Tester", "Drain pan"]'::jsonb,
    '["DEX-COOL antifreeze ~11 quarts", "Clean water"]'::jsonb,
    '["Do not remove radiator cap while hot", "Remove radiator cap", "Use Vac-N-Fill tool to drain coolant", "Inspect coolant condition", "Normal: fill / Discolored: flush first", "Attach Vac-N-Fill cap to fill port", "Pour 50/50 mix into reservoir", "Create vacuum, draw coolant into system", "Fill to proper level", "Start engine, check for leaks"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Cooling%20System/Service%20and%20Repair/Cooling%20System%20Draining%20and%20Filling/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (53, 'Spark Plug Replacement', 'Replace all 6 spark plugs. Gap: 0.043 in (1.1mm). Torque: 15 Nm.', 100000, 120, 'hard', 90,
    '["Spark plug socket 5/8 inch", "Extension", "Torque wrench", "Dielectric grease", "Anti-seize", "Gap tool"]'::jsonb,
    '["AC Delco 41-103 spark plugs (set of 6)"]'::jsonb,
    '["Remove engine cover", "Disconnect coil connectors", "Remove coils one at a time", "Blow debris from plug wells", "Remove plugs", "Gap new plugs to 0.043 in", "Apply anti-seize to threads", "Install by hand", "Torque to 15 Nm", "Apply dielectric grease to coil boots", "Reinstall coils", "Repeat for remaining cylinders"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (48, 'Engine Air Filter Replacement', 'Replace the engine air filter element.', 22500, 18, 'easy', 10,
    '["Phillips screwdriver or 10mm socket"]'::jsonb,
    '["AC Delco A3181C air filter"]'::jsonb,
    '["Open air cleaner housing clips", "Lift upper cover", "Remove old filter", "Clean housing", "Install new filter", "Replace cover and secure"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/Air%20Cleaner%20Housing/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (32, 'Serpentine Drive Belt Inspection', 'Inspect belt for cracks, fraying, glazing. Replace if worn.', 80000, 80, 'medium', 20,
    '["Socket set", "Belt tensioner tool", "Flashlight"]'::jsonb,
    '["Serpentine belt (verify length for configuration)"]'::jsonb,
    '["Locate belt routing diagram", "Inspect belt condition", "Check tensioner operation", "Release tension, remove old belt", "Install new belt per routing diagram", "Verify belt tracks properly"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Drive%20Belts%2C%20Mounts%2C%20Brackets%20and%20Accessories/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (44, 'Engine Oil Pressure Diagnosis', 'Diagnose low oil pressure. Spec: 28-55 psi at 2000 RPM warm.', NULL, NULL, 'medium', 45,
    '["Mechanical oil pressure gauge", "Socket set", "Shop towels"]'::jsonb,
    '["Replacement oil pressure sensor (if faulty)"]'::jsonb,
    '["Check oil level", "Inspect for leaks", "Check sensor connector", "Install mechanical gauge", "Test pressure at idle and 2000 RPM", "Compare to 28-55 psi spec", "Check pump/bearings if low", "Replace sensor if faulty"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Engine%20Lubrication/Engine%20Oil%20Pressure/');

INSERT INTO maintenance_tasks (component_id, name, description, interval_miles, interval_months, difficulty, estimated_time_minutes, tools_needed, parts_needed, steps, charm_li_url)
VALUES (56, 'ECT Sensor Diagnosis', 'Diagnose coolant temp sensor. Check resistance at various temps.', NULL, NULL, 'medium', 30,
    '["Digital multimeter", "Basic hand tools"]'::jsonb,
    '["Replacement ECT sensor (if faulty)"]'::jsonb,
    '["Locate ECT sensor near thermostat", "Disconnect connector", "Measure resistance", "Compare to temp chart", "Replace if out of range", "Apply thread sealant", "Install and torque", "Reconnect connector"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Specifications/Electrical%20Specifications/Computers%20and%20Control%20Systems/Temperature%20Versus%20Resistance%20-%20Engine%20Coolant%20Temperature%20Sensor/');

INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(1, 41, 'capacity', 'Engine Oil with Filter', '5.5', 'quarts (5.2L)', 'Approximate. Recheck after filling.'),
(1, 41, 'capacity', 'Engine Oil without Filter', '4.5', 'quarts (4.3L)', 'Approximate'),
(1, NULL, 'other', 'Oil Type', '5W-30', 'dexos1 certified', 'GM standard'),
(1, 10, 'capacity', 'Coolant Capacity', '11', 'quarts (10.4L)', 'Approximate total'),
(1, 53, 'gap', 'Spark Plug Gap', '0.043', 'inches (1.1mm)', 'AC Delco 41-103'),
(1, 53, 'torque', 'Spark Plug Torque', '15', 'Nm (11 lb ft)', 'Anti-seize on threads'),
(1, 41, 'torque', 'Oil Filter Torque', '30', 'Nm (22 lb ft)', 'Lubricate gasket'),
(1, 39, 'torque', 'Drain Plug Torque', '20', 'Nm (15 lb ft)', 'Replace washer if damaged'),
(1, 44, 'pressure', 'Oil Pressure at 2000 RPM', '28-55', 'psi', 'Normal range warm');
