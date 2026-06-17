-- Seed data: Components — System 3: Transmission and Drivetrain
-- Subsystem IDs: 8=Automatic Transmission, 9=Drivetrain

INSERT INTO components (system_id, subsystem_id, name, slug, mesh_name, is_serviceable, sort_order, description) VALUES
(3, 8, 'Transmission Assembly', 'transmission-assembly', 'transmission_assembly', true, 1, '6T75 6-speed automatic transmission'),
(3, 8, 'Transmission Fluid', 'transmission-fluid', 'transmission_fluid', true, 2, 'Dexron VI automatic transmission fluid'),
(3, 8, 'Transmission Filter', 'transmission-filter', 'transmission_filter', true, 3, 'Internal transmission filter'),
(3, 8, 'Transmission Pan', 'transmission-pan', 'transmission_pan', true, 4, 'Transmission oil pan with drain plug'),
(3, 8, 'Transmission Cooler', 'transmission-cooler', 'transmission_cooler', true, 5, 'Transmission oil cooler (in radiator)'),
(3, 8, 'Transmission Control Module (TCM)', 'tcm', 'tcm', true, 6, 'Transmission control module'),
(3, 8, 'Flex Plate', 'flex-plate', 'flex_plate', true, 7, 'Flex plate between engine and transmission'),
(3, 8, 'Torque Converter', 'torque-converter', 'torque_converter', true, 8, 'Torque converter assembly'),
(3, 9, 'Differential Assembly', 'differential', 'differential', true, 1, 'Front differential (FWD)'),
(3, 9, 'Drive Axle (Left)', 'drive-axle-left', 'drive_axle_left', true, 2, 'Left CV drive axle'),
(3, 9, 'Drive Axle (Right)', 'drive-axle-right', 'drive_axle_right', true, 3, 'Right CV drive axle'),
(3, 9, 'CV Joint (Inner)', 'cv-joint-inner', 'cv_joint_inner', true, 4, 'Inner CV joint'),
(3, 9, 'CV Joint (Outer)', 'cv-joint-outer', 'cv_joint_outer', true, 5, 'Outer CV joint'),
(3, 9, 'Wheel Bearing (Front)', 'wheel-bearing-front', 'wheel_bearing_front', true, 6, 'Front wheel bearing hub assembly'),
(3, 9, 'Wheel Bearing (Rear)', 'wheel-bearing-rear', 'wheel_bearing_rear', true, 7, 'Rear wheel bearing hub assembly');
