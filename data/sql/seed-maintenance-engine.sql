-- Seed data: Maintenance Tasks — System 1: Engine, Cooling and Exhaust
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- Source: charm.li / Operation CHARM (Factory Service Manual)
-- Each procedure includes the charm_li_url for traceability

-- ============================================================
-- OIL AND FILTER CHANGE
-- Component: Oil Filter (id=41)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Maintenance/Fluids/Engine%20Oil/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    41,
    'Engine Oil and Filter Change',
    'Drain engine oil, replace oil filter, and refill with fresh oil. Capacity: 5.5 quarts (5.2L) with filter. Use 5W-30 dexos1 or equivalent.',
    5000,
    6,
    'easy',
    30,
    '["Socket set (15mm for drain plug)", "Oil filter wrench", "Drain pan", "Funnel", "Jack and jack stands or ramps", "Gloves", "Shop towels"]',
    '["Engine oil filter (AC Delco PF-46 or equivalent)", "5W-30 engine oil — 5.5 quarts (dexos1 certified)"]',
    '["Raise vehicle and support on jack stands", "Place drain pan under oil filter", "Loosen oil filter, allow oil to drain", "Remove oil filter, keep upright", "Clean all oil spillage", "Lubricate NEW filter gasket with clean oil", "Install NEW filter, tighten to 30 Nm (22 lb ft)", "Place drain pan under oil pan drain plug", "Remove drain plug, allow oil to drain completely", "Install drain plug, tighten to 20 Nm (15 lb ft)", "Lower vehicle", "Refill engine oil — 5.5 quarts", "Start engine and inspect for leaks", "Check oil level with dipstick"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Maintenance/Fluids/Engine%20Oil/'
);

-- ============================================================
-- COOLANT DRAIN AND FILL
-- Component: Thermostat (id=10 in Cooling System)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Cooling%20System/Service%20and%20Repair/Cooling%20System%20Draining%20and%20Filling/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    10,
    'Cooling System Drain and Fill',
    'Drain and refill engine coolant. Use 50/50 DEX-COOL and clean water mixture. Special tool GE-47716 Vac-N-Fill recommended for proper fill without air pockets.',
    60000,
    60,
    'medium',
    60,
    '["GE-47716 Vac-N-Fill Coolant Refill Tool (recommended)", "J 26568 Coolant and Battery Tester", "Drain pan", "Basic hand tools"]',
    '["DEX-COOL antifreeze — approximately 11 quarts (10.4L) for complete refill", "Clean drinkable water"]',
    '["Warning: Do not remove radiator cap while engine is hot", "Remove radiator cap", "Attach venturi assembly to vacuum tank", "Attach shop air hose to venturi assembly (valve closed)", "Attach vacuum hose to vacuum tank", "Attach extraction hose to vacuum hose", "Insert extraction hose into radiator until it contacts bottom of end tank", "Open venturi valve to start vacuum draw", "Draw out coolant until radiator is empty", "Drain vacuum tank into suitable container", "If complete block drain required, remove engine block drain plug", "Inspect coolant condition", "Normal: proceed with fill / Discolored: flush first", "Attach Vac-N-Fill cap to coolant fill port", "Install extension hose and vacuum gauge assembly", "Attach fill hose (valve closed)", "Pour 50/50 coolant mixture into graduated reservoir", "Place fill hose in reservoir", "Install vacuum tank on reservoir", "Attach venturi assembly and shop air hose (valve closed)", "Attach vacuum hose to gauge and tank", "Open venturi valve to create vacuum", "Monitor vacuum gauge", "Open fill hose valve to draw coolant into system", "Fill to proper level", "Start engine and bring to operating temperature", "Check coolant level and inspect for leaks"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Cooling%20System/Service%20and%20Repair/Cooling%20System%20Draining%20and%20Filling/'
);

-- ============================================================
-- SPARK PLUG REPLACEMENT
-- Component: Spark Plugs (id=53)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    53,
    'Spark Plug Replacement',
    'Replace all 6 spark plugs on the 3.6L V6 engine. Gap specification: 0.043 inches (1.1mm). Torque: 15 Nm (11 lb ft).',
    100000,
    120,
    'hard',
    90,
    '["Spark plug socket (5/8\" or 16mm)", "Socket extension", "Torque wrench", "Dielectric grease", "Anti-seize compound", "Spark plug gap tool", "Ratchet"]',
    '["AC Delco 41-103 spark plugs (set of 6) or equivalent iridium plugs"]',
    '["Remove engine cover if equipped", "Disconnect ignition coil electrical connectors", "Remove ignition coils (one at a time to avoid mixing up)", "Use compressed air to blow debris from spark plug wells", "Remove spark plugs using spark plug socket and extension", "Check and gap new spark plugs to 0.043 in (1.1mm)", "Apply small amount of anti-seize to new plug threads", "Install new spark plugs by hand to avoid cross-threading", "Torque to 15 Nm (11 lb ft)", "Apply dielectric grease to inside of ignition coil boots", "Reinstall ignition coils", "Reconnect electrical connectors", "Repeat for remaining 5 cylinders", "Start engine and verify smooth operation"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/'
);

-- ============================================================
-- AIR FILTER REPLACEMENT
-- Component: Air Filter Element (id=48)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/Air%20Cleaner%20Housing/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    48,
    'Engine Air Filter Replacement',
    'Replace the engine air filter element. Located in the air cleaner housing on the driver side of the engine bay.',
    22500,
    18,
    'easy',
    10,
    '["Phillips screwdriver or 10mm socket (depending on housing fasteners)"]',
    '["AC Delco A3181C air filter or equivalent"]',
    '["Open the air cleaner housing clips or remove fasteners", "Lift off the upper housing cover", "Remove the old air filter element", "Clean any debris from the housing", "Install new air filter element (ensure proper seating)", "Replace upper housing cover and secure clips/fasteners", "Verify housing is sealed properly"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Tune-up%20and%20Engine%20Performance%20Checks/Air%20Cleaner%20Housing/'
);

-- ============================================================
-- DRIVE BELT (SERPENTINE) INSPECTION
-- Component: Drive Belt (id=32)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Drive%20Belts%2C%20Mounts%2C%20Brackets%20and%20Accessories/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    32,
    'Serpentine Drive Belt Inspection and Replacement',
    'Inspect the serpentine drive belt for cracks, fraying, glazing, or contamination. Replace if worn or damaged. Belt routing diagram is located on the radiator support or hood.',
    80000,
    80,
    'medium',
    20,
    '["Socket set", "Belt tensioner tool or long breaker bar", "Flashlight for inspection"]',
    '["Serpentine belt (AC Delco 6K930 or equivalent, verify length for your configuration)"]',
    '["Locate belt routing diagram (on radiator support or hood)", "Inspect belt for cracks, fraying, glazing, or oil contamination", "Check belt tensioner for proper operation and wear", "If replacement needed: use belt tensioner tool to release tension", "Remove old belt following routing diagram", "Install new belt following routing diagram exactly", "Release tensioner slowly to apply tension to new belt", "Verify belt is properly seated on all pulleys", "Start engine and verify belt tracks properly"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Drive%20Belts%2C%20Mounts%2C%20Brackets%20and%20Accessories/'
);

-- ============================================================
-- ENGINE OIL PRESSURE DIAGNOSIS
-- Component: Oil Pressure Sensor (id=44)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Engine%20Lubrication/Engine%20Oil%20Pressure/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    44,
    'Engine Oil Pressure Diagnosis',
    'Diagnose low or no engine oil pressure. Check oil level first, then test with mechanical gauge. Spec: 28-55 psi at 2000 RPM (warm).',
    NULL,
    NULL,
    'medium',
    45,
    '["Mechanical oil pressure gauge", "Socket set", "Shop towels", "Flashlight"]',
    '["Replacement oil pressure sensor (if faulty)", "Engine oil (if low)"]',
    '["Check engine oil level with dipstick — top off if low", "Inspect for oil leaks around engine", "Check oil pressure sensor electrical connector", "If oil level is good and no leaks: install mechanical oil pressure gauge", "Start engine and check pressure at idle and 2000 RPM", "Compare to specification: 28-55 psi at 2000 RPM (warm)", "If pressure is low: check oil pump, bearings, or blockages", "If sensor is faulty: replace oil pressure sensor", "Clear DTCs and verify repair"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Engine%2C%20Cooling%20and%20Exhaust/Engine/Engine%20Lubrication/Engine%20Oil%20Pressure/'
);

-- ============================================================
-- ENGINE COOLANT TEMPERATURE SENSOR DIAGNOSIS
-- Component: Coolant Temperature Sensor (id=56)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Specifications/Electrical%20Specifications/Computers%20and%20Control%20Systems/Temperature%20Versus%20Resistance%20-%20Engine%20Coolant%20Temperature%20Sensor/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    56,
    'Engine Coolant Temperature Sensor Diagnosis',
    'Diagnose ECT sensor issues. Check resistance values at various temperatures. Common symptoms: inaccurate temp gauge, poor fuel economy, hard cold starts.',
    NULL,
    NULL,
    'medium',
    30,
    '["Digital multimeter", "Basic hand tools", "Infrared thermometer (optional)"]',
    '["Replacement ECT sensor (if faulty)"]',
    '["Locate ECT sensor (typically near thermostat housing)", "Disconnect electrical connector", "Measure sensor resistance with multimeter", "Compare to temperature vs resistance chart", "At 20°C (68°F): ~3.4k ohms", "At 40°C (104°F): ~1.1k ohms", "At 80°C (176°F): ~300 ohms", "If readings are out of range: replace sensor", "Apply thread sealant to new sensor threads", "Install and torque sensor", "Reconnect electrical connector", "Clear DTCs and verify repair"]',
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Specifications/Electrical%20Specifications/Computers%20and%20Control%20Systems/Temperature%20Versus%20Resistance%20-%20Engine%20Coolant%20Temperature%20Sensor/'
);

-- ============================================================
-- ENGINE OIL SPECIFICATION
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Specifications/Capacity%20Specifications/Engine%20Oil/
-- ============================================================
INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(1, 41, 'capacity', 'Engine Oil Capacity with Filter', '5.5', 'quarts (5.2L)', 'All capacities are approximate. Recheck level after filling.'),
(1, 41, 'capacity', 'Engine Oil Capacity without Filter', '4.5', 'quarts (4.3L)', 'Approximate'),
(1, NULL, 'other', 'Recommended Oil Type', '5W-30', 'dexos1 certified', 'Use dexos1 certified oil meeting GM standard'),
(1, 10, 'capacity', 'Cooling System Capacity', '11', 'quarts (10.4L)', 'Approximate total system capacity'),
(1, 53, 'gap', 'Spark Plug Gap', '0.043', 'inches (1.1mm)', 'For AC Delco 41-103 or equivalent iridium plugs'),
(1, 53, 'torque', 'Spark Plug Torque', '15', 'Nm (11 lb ft)', 'Apply anti-seize to threads before installation'),
(1, 41, 'torque', 'Oil Filter Torque', '30', 'Nm (22 lb ft)', 'Lubricate gasket with clean oil before installation'),
(1, 39, 'torque', 'Oil Drain Plug Torque', '20', 'Nm (15 lb ft)', 'Replace drain plug washer if damaged'),
(1, 44, 'pressure', 'Engine Oil Pressure (at 2000 RPM, warm)', '28-55', 'psi', 'Normal operating range');
