-- Seed data: Components — System 2: Powertrain Management
-- Subsystem IDs: 4=Fuel Delivery, 5=Ignition, 6=Computers, 7=Info Bus

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(2, 4, 'Fuel Tank', 'fuel-tank', 'fuel_tank', false, 1, 'Main fuel tank'),
(2, 4, 'Fuel Pump Module', 'fuel-pump-module', 'fuel_pump_module', true, 2, 'In-tank fuel pump module'),
(2, 4, 'Fuel Pressure Control Module', 'fuel-pressure-control-module', 'fuel_pressure_control_module', true, 3, 'Fuel pressure control module'),
(2, 4, 'Fuel Lines', 'fuel-lines', 'fuel_lines', true, 4, 'Fuel supply and return lines'),
(2, 4, 'Throttle Body', 'throttle-body', 'throttle_body', true, 5, 'Electronic throttle body'),
(2, 5, 'Ignition Coils', 'ignition-coils', 'ignition_coils', true, 1, 'Coil-on-plug ignition coils, set of 6'),
(2, 5, 'Ignition Relay', 'ignition-relay', 'ignition_relay', true, 2, 'Ignition system relay'),
(2, 6, 'Engine Control Module (ECM)', 'ecm', 'ecm', true, 1, 'Engine control module'),
(2, 6, 'Body Control Module (BCM)', 'bcm', 'bcm', true, 2, 'Body control module, behind glove box'),
(2, 6, 'Main Relay (Computer/Fuel)', 'main-relay-computer', 'main_relay_computer', true, 3, 'Main computer/fuel system relay');
