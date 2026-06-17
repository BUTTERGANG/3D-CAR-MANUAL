-- Seed data: Components — System 6: Starting and Charging
-- Subsystem IDs: 18=Starting System, 19=Charging System

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(6, 18, 'Starter Motor', 'starter-motor', 'starter_motor', true, 1, 'Starter motor assembly'),
(6, 18, 'Starter Solenoid', 'starter-solenoid', 'starter_solenoid', true, 2, 'Starter solenoid (integral to starter)'),
(6, 18, 'Starter Relay', 'starter-relay', 'starter_relay', true, 3, 'Starter motor relay'),
(6, 18, 'Ignition Switch', 'ignition-switch', 'ignition_switch', true, 4, 'Ignition switch'),
(6, 18, 'Battery', 'battery', 'battery', true, 5, 'Group 48 battery, ~650 CCA'),
(6, 18, 'Battery Cable (Positive)', 'battery-cable-positive', 'battery_cable_positive', true, 6, 'Positive battery cable'),
(6, 18, 'Battery Cable (Negative)', 'battery-cable-negative', 'battery_cable_negative', true, 7, 'Negative battery cable'),
(6, 19, 'Alternator', 'alternator', 'alternator', true, 1, '~150 amp alternator'),
(6, 19, 'Alternator Pulley', 'alternator-pulley', 'alternator_pulley', true, 2, 'Overrunning alternator pulley'),
(6, 19, 'Voltage Regulator', 'voltage-regulator', 'voltage_regulator', true, 3, 'Internal voltage regulator (part of alternator)');
