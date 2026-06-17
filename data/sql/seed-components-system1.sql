-- Seed data: Components — System 1: Engine, Cooling and Exhaust
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- Subsystem IDs: 1=Engine, 2=Cooling System, 3=Exhaust System

-- ============================================================
-- SUBSYSTEM 1: ENGINE
-- ============================================================

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(1, 1, 'Engine Assembly', 'engine-assembly', 'engine_assembly', false, 1, 'Complete 3.6L V6 long block assembly'),
(1, 1, 'Cylinder Block Assembly', 'cylinder-block-assembly', 'cylinder_block', false, 2, 'Engine block with pistons, crankshaft, and bearings'),
(1, 1, 'Cylinder Head Assembly (Left)', 'cylinder-head-left', 'cylinder_head_left', false, 3, 'Left cylinder head with valves, springs, and camshaft'),
(1, 1, 'Cylinder Head Assembly (Right)', 'cylinder-head-right', 'cylinder_head_right', false, 4, 'Right cylinder head with valves, springs, and camshaft'),
(1, 1, 'Crankshaft', 'crankshaft', 'crankshaft', false, 5, 'Main crankshaft with main bearings'),
(1, 1, 'Pistons and Connecting Rods', 'pistons-connecting-rods', 'pistons_rods', false, 6, 'Set of 6 pistons with connecting rings and bearings'),
(1, 1, 'Camshaft (Left)', 'camshaft-left', 'camshaft_left', true, 7, 'Left intake/exhaust camshaft with VVT actuator'),
(1, 1, 'Camshaft (Right)', 'camshaft-right', 'camshaft_right', true, 8, 'Right intake/exhaust camshaft with VVT actuator'),
(1, 1, 'Timing Chain (Primary)', 'timing-chain-primary', 'timing_chain_primary', true, 9, 'Primary timing chain with guides and tensioner'),
(1, 1, 'Timing Chain (Secondary Left)', 'timing-chain-secondary-left', 'timing_chain_secondary_left', true, 10, 'Left secondary cam-to-cam timing chain'),
(1, 1, 'Timing Chain (Secondary Right)', 'timing-chain-secondary-right', 'timing_chain_secondary_right', true, 11, 'Right secondary cam-to-cam timing chain'),
(1, 1, 'Timing Chain Tensioner (Primary)', 'timing-tensioner-primary', 'timing_tensioner_primary', true, 12, 'Primary timing chain hydraulic tensioner'),
(1, 1, 'Timing Chain Tensioner (Secondary Left)', 'timing-tensioner-secondary-left', 'timing_tensioner_secondary_left', true, 13, 'Left secondary chain tensioner'),
(1, 1, 'Timing Chain Tensioner (Secondary Right)', 'timing-tensioner-secondary-right', 'timing_tensioner_secondary_right', true, 14, 'Right secondary chain tensioner'),
(1, 1, 'Timing Chain Guide', 'timing-chain-guide', 'timing_chain_guide', true, 15, 'Upper and lower timing chain guides'),
(1, 1, 'Timing Cover', 'timing-cover', 'timing_cover', true, 16, 'Front engine timing cover'),
(1, 1, 'VVT Actuator (Intake Left)', 'vvt-actuator-intake-left', 'vvt_actuator_intake_left', true, 17, 'Left intake variable valve timing actuator'),
(1, 1, 'VVT Actuator (Exhaust Left)', 'vvt-actuator-exhaust-left', 'vvt_actuator_exhaust_left', true, 18, 'Left exhaust variable valve timing actuator'),
(1, 1, 'VVT Actuator (Intake Right)', 'vvt-actuator-intake-right', 'vvt_actuator_intake_right', true, 19, 'Right intake variable valve timing actuator'),
(1, 1, 'VVT Actuator (Exhaust Right)', 'vvt-actuator-exhaust-right', 'vvt_actuator_exhaust_right', true, 20, 'Right exhaust variable valve timing actuator'),
(1, 1, 'VVT Solenoid', 'vvt-solenoid', 'vvt_solenoid', true, 21, 'Variable valve timing solenoid (one per actuator)'),
(1, 1, 'Valve Cover (Left)', 'valve-cover-left', 'valve_cover_left', true, 22, 'Left valve cover with gasket'),
(1, 1, 'Valve Cover (Right)', 'valve-cover-right', 'valve_cover_right', true, 23, 'Right valve cover with gasket'),
(1, 1, 'Valve Springs', 'valve-springs', 'valve_springs', true, 24, 'Set of valve springs'),
(1, 1, 'Valve Guide Seals', 'valve-guide-seals', 'valve_guide_seals', true, 25, 'Set of valve stem seals'),
(1, 1, 'Rocker Arms', 'rocker-arms', 'rocker_arms', true, 26, 'Set of rocker arms'),
(1, 1, 'Valve Lifters / Lash Adjusters', 'valve-lifters', 'valve_lifters', true, 27, 'Set of hydraulic valve lifters'),
(1, 1, 'Intake Manifold', 'intake-manifold', 'intake_manifold', true, 28, 'Upper and lower intake manifold assembly'),
(1, 1, 'Harmonic Balancer / Crankshaft Pulley', 'harmonic-balancer', 'harmonic_balancer', true, 29, 'Crankshaft harmonic balancer and pulley'),
(1, 1, 'Front Crankshaft Seal', 'front-crank-seal', 'front_crank_seal', true, 30, 'Front crankshaft oil seal'),
(1, 1, 'Rear Crankshaft Main Bearing Seal', 'rear-crank-seal', 'rear_crank_seal', true, 31, 'Rear crankshaft main bearing oil seal'),
(1, 1, 'Drive Belt (Serpentine)', 'drive-belt', 'drive_belt', true, 32, 'Serpentine accessory drive belt. Replace every 60K-100K miles.'),
(1, 1, 'Drive Belt Tensioner', 'drive-belt-tensioner', 'drive_belt_tensioner', true, 33, 'Spring-loaded drive belt tensioner'),
(1, 1, 'Idler Pulley', 'idler-pulley', 'idler_pulley', true, 34, 'Drive belt idler pulley'),
(1, 1, 'Engine Mount (Front)', 'engine-mount-front', 'engine_mount_front', true, 35, 'Front engine mount'),
(1, 1, 'Engine Mount (Rear)', 'engine-mount-rear', 'engine_mount_rear', true, 36, 'Rear engine mount'),
(1, 1, 'Engine Mount (Left)', 'engine-mount-left', 'engine_mount_left', true, 37, 'Left engine mount'),
(1, 1, 'Engine Mount (Right)', 'engine-mount-right', 'engine_mount_right', true, 38, 'Right engine mount'),
(1, 1, 'Oil Pan', 'oil-pan', 'oil_pan', true, 39, 'Engine oil pan with drain plug'),
(1, 1, 'Oil Pump', 'oil-pump', 'oil_pump', true, 40, 'Engine oil pump'),
(1, 1, 'Oil Filter', 'oil-filter', 'oil_filter', true, 41, 'Engine oil filter. Replace every 3K-5K miles.'),
(1, 1, 'Oil Filter Adapter', 'oil-filter-adapter', 'oil_filter_adapter', true, 42, 'Oil filter adapter housing'),
(1, 1, 'Oil Cooler', 'oil-cooler', 'oil_cooler', true, 43, 'Engine oil cooler'),
(1, 1, 'Oil Pressure Sensor', 'oil-pressure-sensor', 'oil_pressure_sensor', true, 44, 'Engine oil pressure sensor'),
(1, 1, 'Oil Pickup Tube / Strainer', 'oil-pickup-strainer', 'oil_pickup_strainer', true, 45, 'Oil pickup tube with strainer screen'),
(1, 1, 'Oil Dipstick and Tube', 'oil-dipstick', 'oil_dipstick', true, 46, 'Oil level dipstick and tube'),
(1, 1, 'Air Cleaner Housing', 'air-cleaner-housing', 'air_cleaner_housing', true, 47, 'Air filter housing assembly'),
(1, 1, 'Air Filter Element', 'air-filter', 'air_filter', true, 48, 'Engine air filter element. Replace every 15K-30K miles.'),
(1, 1, 'Air Cleaner Fresh Air Duct', 'air-cleaner-duct', 'air_cleaner_duct', true, 49, 'Fresh air intake duct to air filter housing'),
(1, 1, 'Fuel Filter', 'fuel-filter', 'fuel_filter', true, 50, 'In-tank or inline fuel filter'),
(1, 1, 'Fuel Rail', 'fuel-rail', 'fuel_rail', true, 51, 'Fuel rail assembly'),
(1, 1, 'Fuel Injectors', 'fuel-injectors', 'fuel_injectors', true, 52, 'Set of 6 fuel injectors'),
(1, 1, 'Spark Plugs', 'spark-plugs', 'spark_plugs', true, 53, 'Set of 6 spark plugs. Replace every 100K miles.'),
(1, 1, 'Engine Block Heater', 'engine-block-heater', 'engine_block_heater', true, 54, 'Block heater for cold climate (optional)'),
(1, 1, 'Engine Control Module (ECM)', 'ecm', 'ecm', true, 55, 'Engine control module, located under hood driver side'),
(1, 1, 'Coolant Temperature Sensor', 'coolant-temp-sensor', 'coolant_temp_sensor', true, 56, 'Engine coolant temperature sensor'),
(1, 1, 'Camshaft Position Sensor', 'camshaft-position-sensor', 'camshaft_position_sensor', true, 57, 'Camshaft position sensor'),
(1, 1, 'Crankshaft Position Sensor', 'crankshaft-position-sensor', 'crankshaft_position_sensor', true, 58, 'Crankshaft position sensor'),
(1, 1, 'Knock Sensor', 'knock-sensor', 'knock_sensor', true, 59, 'Engine knock sensor'),
(1, 1, 'MAP Sensor', 'map-sensor', 'map_sensor', true, 60, 'Manifold Absolute Pressure sensor'),
(1, 1, 'MAF Sensor', 'maf-sensor', 'maf_sensor', true, 61, 'Mass Air Flow sensor');

-- ============================================================
-- SUBSYSTEM 2: COOLING SYSTEM
-- ============================================================

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(1, 2, 'Radiator', 'radiator', 'radiator', true, 1, 'Main engine radiator'),
(1, 2, 'Radiator Cap', 'radiator-cap', 'radiator_cap', true, 2, 'Pressure-rated radiator cap'),
(1, 2, 'Radiator Hose (Upper)', 'radiator-hose-upper', 'radiator_hose_upper', true, 3, 'Upper radiator coolant hose'),
(1, 2, 'Radiator Hose (Lower)', 'radiator-hose-lower', 'radiator_hose_lower', true, 4, 'Lower radiator coolant hose'),
(1, 2, 'Radiator Cooling Fan Assembly', 'radiator-fan-assembly', 'radiator_fan_assembly', true, 5, 'Dual radiator cooling fan assembly'),
(1, 2, 'Radiator Cooling Fan Motor', 'radiator-fan-motor', 'radiator_fan_motor', true, 6, 'Radiator cooling fan electric motor'),
(1, 2, 'Radiator Cooling Fan Motor Relay', 'radiator-fan-relay', 'radiator_fan_relay', true, 7, 'Radiator fan motor relay'),
(1, 2, 'Coolant Reservoir', 'coolant-reservoir', 'coolant_reservoir', true, 8, 'Coolant overflow reservoir tank'),
(1, 2, 'Coolant Outlet / Water Outlet', 'coolant-outlet', 'coolant_outlet', true, 9, 'Coolant outlet / water outlet housing'),
(1, 2, 'Thermostat', 'thermostat', 'thermostat', true, 10, 'Engine coolant thermostat, ~195°F opening'),
(1, 2, 'Thermostat Housing', 'thermostat-housing', 'thermostat_housing', true, 11, 'Thermostat housing'),
(1, 2, 'Water Pump', 'water-pump', 'water_pump', true, 12, 'Engine water pump, timing chain driven'),
(1, 2, 'Heater Core', 'heater-core', 'heater_core', true, 13, 'Heater core inside dashboard'),
(1, 2, 'Heater Hose (Inlet)', 'heater-hose-inlet', 'heater_hose_inlet', true, 14, 'Heater core inlet hose'),
(1, 2, 'Heater Hose (Outlet)', 'heater-hose-outlet', 'heater_hose_outlet', true, 15, 'Heater core outlet hose'),
(1, 2, 'Coolant Temperature Sensor (Computer)', 'coolant-temp-sensor-computer', 'coolant_temp_sensor_computer', true, 16, 'ECT sensor for engine computer');

-- ============================================================
-- SUBSYSTEM 3: EXHAUST SYSTEM
-- ============================================================

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(1, 3, 'Exhaust Manifold (Left)', 'exhaust-manifold-left', 'exhaust_manifold_left', true, 1, 'Left exhaust manifold with heat shield'),
(1, 3, 'Exhaust Manifold (Right)', 'exhaust-manifold-right', 'exhaust_manifold_right', true, 2, 'Right exhaust manifold with heat shield'),
(1, 3, 'Catalytic Converter (Left)', 'catalytic-converter-left', 'catalytic_converter_left', true, 3, 'Left catalytic converter'),
(1, 3, 'Catalytic Converter (Right)', 'catalytic-converter-right', 'catalytic_converter_right', true, 4, 'Right catalytic converter'),
(1, 3, 'Exhaust Pipe (Front)', 'exhaust-pipe-front', 'exhaust_pipe_front', true, 5, 'Front exhaust Y-pipe'),
(1, 3, 'Exhaust Pipe (Rear)', 'exhaust-pipe-rear', 'exhaust_pipe_rear', true, 6, 'Rear exhaust pipe'),
(1, 3, 'Muffler', 'muffler', 'muffler', true, 7, 'Rear muffler'),
(1, 3, 'Exhaust Heat Shields', 'exhaust-heat-shields', 'exhaust_heat_shields', true, 8, 'Multiple exhaust heat shield pieces');
