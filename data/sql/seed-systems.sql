-- Seed data: Systems and Subsystems
-- 2011 Chevrolet Traverse FWD V6-3.6L

INSERT INTO systems (name, slug, description, sort_order) VALUES
('Engine, Cooling and Exhaust', 'engine-cooling-exhaust', 'Engine assembly, cooling system, and exhaust system', 1),
('Powertrain Management', 'powertrain-management', 'Engine control, fuel delivery, ignition, and computer systems', 2),
('Transmission and Drivetrain', 'transmission-drivetrain', 'Automatic transmission, differential, drive axles, and transfer case', 3),
('Brakes and Traction Control', 'brakes-traction-control', 'Disc brakes, hydraulics, parking brake, ABS, and stability control', 4),
('Steering and Suspension', 'steering-suspension', 'Steering rack, front/rear suspension, wheels, and tires', 5),
('Starting and Charging', 'starting-charging', 'Starter motor, battery, alternator, and power distribution', 6),
('Heating and Air Conditioning', 'hvac', 'HVAC system, A/C compressor, heater core, and cabin filter', 7),
('Body and Frame', 'body-frame', 'Exterior body panels, frame, doors, hood, and liftgate', 8),
('Lighting and Horns', 'lighting-horns', 'Exterior/interior lighting, horn, and relays', 9),
('Windows and Glass', 'windows-glass', 'Windshield, door glass, rear window, and regulators', 10),
('Wiper and Washer Systems', 'wiper-washer', 'Wiper motor, blades, washer pump, and reservoir', 11),
('Instrument Panel, Gauges and Warning Indicators', 'instrument-panel', 'Instrument cluster, gauges, DIC, and dashboard trim', 12),
('Cruise Control', 'cruise-control', 'Cruise control module, switch, and servo', 13),
('Power and Ground Distribution', 'power-ground-distribution', 'Fuse boxes, relay boxes, power distribution, and ground straps', 14),
('Restraints and Safety Systems', 'restraints-safety', 'Airbags, seat belts, pretensioners, and SDM', 15),
('Accessories and Optional Equipment', 'accessories', 'Radio, nav, cameras, power seats, sunroof, trailer hitch, and more', 16),
('Relays and Modules', 'relays-modules', 'Cross-system relays and control modules', 17),
('Sensors and Switches', 'sensors-switches', 'Cross-system sensors and switches', 18);

-- Subsystems for: Engine, Cooling and Exhaust (system_id = 1)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(1, 'Engine', 'engine', 1),
(1, 'Cooling System', 'cooling-system', 2),
(1, 'Exhaust System', 'exhaust-system', 3);

-- Subsystems for: Powertrain Management (system_id = 2)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(2, 'Fuel Delivery and Air Induction', 'fuel-delivery-air-induction', 1),
(2, 'Ignition System', 'ignition-system', 2),
(2, 'Computers and Control Systems', 'computers-control-systems', 3),
(2, 'Information Bus', 'information-bus', 4);

-- Subsystems for: Transmission and Drivetrrain (system_id = 3)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(3, 'Automatic Transmission', 'automatic-transmission', 1),
(3, 'Drivetrain', 'drivetrain', 2);

-- Subsystems for: Brakes and Traction Control (system_id = 4)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(4, 'Disc Brake System', 'disc-brake-system', 1),
(4, 'Hydraulic System', 'hydraulic-system', 2),
(4, 'Parking Brake System', 'parking-brake-system', 3),
(4, 'Traction Control and ABS', 'traction-control-abs', 4);

-- Subsystems for: Steering and Suspension (system_id = 5)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(5, 'Steering', 'steering', 1),
(5, 'Front Suspension', 'front-suspension', 2),
(5, 'Rear Suspension', 'rear-suspension', 3),
(5, 'Wheels and Tires', 'wheels-tires', 4);

-- Subsystems for: Starting and Charging (system_id = 6)
INSERT INTO subsystems (system_id, name, sort_order) VALUES
(6, 'Starting System', 1),
(6, 'Charging System', 2);

-- Subsystems for: HVAC (system_id = 7)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(7, 'HVAC System', 'hvac-system', 1),
(7, 'A/C System', 'ac-system', 2),
(7, 'Heater System', 'heater-system', 3);

-- Subsystems for: Body and Frame (system_id = 8)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(8, 'Exterior Body', 'exterior-body', 1),
(8, 'Frame and Subframe', 'frame-subframe', 2);

-- Subsystems for: Lighting and Horns (system_id = 9)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(9, 'Exterior Lighting', 'exterior-lighting', 1),
(9, 'Interior Lighting', 'interior-lighting', 2),
(9, 'Horn', 'horn', 3);

-- Subsystems for: Windows and Glass (system_id = 10)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(10, 'Windshield', 'windshield', 1),
(10, 'Door Glass', 'door-glass', 2),
(10, 'Rear Window', 'rear-window', 3),
(10, 'Window Regulators', 'window-regulators', 4);

-- Subsystems for: Instrument Panel (system_id = 12)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(12, 'Instrument Cluster', 'instrument-cluster', 1),
(12, 'Gauges', 'gauges', 2),
(12, 'Warning Indicators', 'warning-indicators', 3),
(12, 'Dashboard Trim', 'dashboard-trim', 4);

-- Subsystems for: Restraints and Safety (system_id = 15)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(15, 'Air Bag Systems', 'air-bag-systems', 1),
(15, 'Seat Belt Systems', 'seat-belt-systems', 2),
(15, 'Head Restraint System', 'head-restraint-system', 3),
(15, 'Sensing and Diagnostic Module', 'sdm', 4);

-- Subsystems for: Accessories (system_id = 16)
INSERT INTO subsystems (system_id, name, slug, sort_order) VALUES
(16, 'Audio System', 'audio-system', 1),
(16, 'Navigation System', 'navigation-system', 2),
(16, 'Parking Assistance', 'parking-assistance', 3),
(16, 'Power Seats', 'power-seats', 4),
(16, 'Sunroof', 'sunroof', 5),
(16, 'Towing Equipment', 'towing-equipment', 6);

-- 3D Zones
INSERT INTO zones (name, mesh_group, description, sort_order) VALUES
('Engine Bay', 'zone_engine_bay', 'Under-hood components: engine, cooling, powertrain, starting', 1),
('Front Left Wheel Well', 'zone_wheel_well_fl', 'FL brake, suspension, steering knuckle', 2),
('Front Right Wheel Well', 'zone_wheel_well_fr', 'FR brake, suspension, steering knuckle', 3),
('Rear Left Wheel Well', 'zone_wheel_well_rl', 'RL brake and suspension', 4),
('Rear Right Wheel Well', 'zone_wheel_well_rr', 'RR brake and suspension', 5),
('Front End', 'zone_front_end', 'Front bumper, grille, headlights, fog lights, condenser', 6),
('Rear End', 'zone_rear_end', 'Rear bumper, taillights, exhaust tips, liftgate', 7),
('Underbody', 'zone_underbody', 'Exhaust, drivetrain, suspension links, frame', 8),
('Interior', 'zone_interior', 'Dashboard, seats, airbags, HVAC interior, windows', 9),
('Roof', 'zone_roof', 'Sunroof, roof rack, antenna, dome lights', 10),
('Left Side', 'zone_left_side', 'Left doors, mirrors, side markers', 11),
('Right Side', 'zone_right_side', 'Right doors, mirrors, side markers', 12);
