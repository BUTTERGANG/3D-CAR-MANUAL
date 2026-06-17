# 2011 Chevrolet Traverse FWD V6-3.6L — Complete Data Model (Part 1)
## Systems 1-4: Engine, Powertrain, Transmission, Brakes

---

### SYSTEM 1: Engine, Cooling and Exhaust
**Slug:** `engine-cooling-exhaust`

#### Subsystem 1.1: Engine
**Slug:** `engine`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Engine Assembly | `engine_assembly` | No (replace only) | Complete long block |
| Cylinder Block Assembly | `cylinder_block` | No | Includes pistons, crankshaft |
| Cylinder Head Assembly (Left) | `cylinder_head_left` | No | With valves, springs |
| Cylinder Head Assembly (Right) | `cylinder_head_right` | No | With valves, springs |
| Crankshaft | `crankshaft` | No | Main bearings included |
| Pistons & Connecting Rods | `pistons_rods` | No | Set of 6 |
| Camshaft (Left) | `camshaft_left` | Yes | With VVT actuator |
| Camshaft (Right) | `camshaft_right` | Yes | With VVT actuator |
| Timing Chain (Primary) | `timing_chain_primary` | Yes | Includes guides, tensioner |
| Timing Chain (Secondary Left) | `timing_chain_secondary_left` | Yes | Cam-to-cam |
| Timing Chain (Secondary Right) | `timing_chain_secondary_right` | Yes | Cam-to-cam |
| Timing Chain Tensioner (Primary) | `timing_tensioner_primary` | Yes | |
| Timing Chain Tensioner (Secondary Left) | `timing_tensioner_secondary_left` | Yes | |
| Timing Chain Tensioner (Secondary Right) | `timing_tensioner_secondary_right` | Yes | |
| Timing Chain Guide | `timing_chain_guide` | Yes | Upper and lower |
| Timing Cover | `timing_cover` | Yes | Front engine cover |
| VVT Actuator (Intake Left) | `vvt_actuator_intake_left` | Yes | Variable Valve Timing |
| VVT Actuator (Exhaust Left) | `vvt_actuator_exhaust_left` | Yes | |
| VVT Actuator (Intake Right) | `vvt_actuator_intake_right` | Yes | |
| VVT Actuator (Exhaust Right) | `vvt_actuator_exhaust_right` | Yes | |
| VVT Solenoid | `vvt_solenoid` | Yes | One per actuator |
| Valve Cover (Left) | `valve_cover_left` | Yes | With gaskets |
| Valve Cover (Right) | `valve_cover_right` | Yes | With gaskets |
| Valve Springs | `valve_springs` | Yes | Set |
| Valve Guide Seals | `valve_guide_seals` | Yes | Set |
| Rocker Arms | `rocker_arms` | Yes | Set |
| Valve Lifters / Lash Adjusters | `valve_lifters` | Yes | Set |
| Intake Manifold | `intake_manifold` | Yes | Upper and lower |
| Harmonic Balancer / Crankshaft Pulley | `harmonic_balancer` | Yes | |
| Front Crankshaft Seal | `front_crank_seal` | Yes | |
| Rear Crankshaft Main Bearing Seal | `rear_crank_seal` | Yes | |
| Drive Belt (Serpentine) | `drive_belt` | Yes | ~60K mile replacement |
| Drive Belt Tensioner | `drive_belt_tensioner` | Yes | Spring-loaded |
| Idler Pulley | `idler_pulley` | Yes | |
| Engine Mount (Front) | `engine_mount_front` | Yes | |
| Engine Mount (Rear) | `engine_mount_rear` | Yes | |
| Engine Mount (Left) | `engine_mount_left` | Yes | |
| Engine Mount (Right) | `engine_mount_right` | Yes | |
| Oil Pan | `oil_pan` | Yes | With drain plug |
| Oil Pump | `oil_pump` | Yes | |
| Oil Filter | `oil_filter` | Yes | ~3-5K mile replacement |
| Oil Filter Adapter | `oil_filter_adapter` | Yes | |
| Oil Cooler | `oil_cooler` | Yes | |
| Oil Pressure Sensor | `oil_pressure_sensor` | Yes | |
| Oil Pickup Tube / Strainer | `oil_pickup_strainer` | Yes | |
| Oil Dipstick & Tube | `oil_dipstick` | Yes | |
| Air Cleaner Housing | `air_cleaner_housing` | Yes | |
| Air Filter Element | `air_filter` | Yes | ~15-30K mile replacement |
| Air Cleaner Fresh Air Duct | `air_cleaner_duct` | Yes | |
| Fuel Filter | `fuel_filter` | Yes | In-tank or inline |
| Fuel Rail | `fuel_rail` | Yes | |
| Fuel Injectors | `fuel_injectors` | Yes | Set of 6 |
| Spark Plugs | `spark_plugs` | Yes | Set of 6, ~100K miles |
| Engine Block Heater | `engine_block_heater` | Optional | Cold climate option |
| Engine Control Module (ECM) | `ecm` | Yes | Under hood, driver side |
| Coolant Temperature Sensor | `coolant_temp_sensor` | Yes | |
| Camshaft Position Sensor | `camshaft_position_sensor` | Yes | |
| Crankshaft Position Sensor | `crankshaft_position_sensor` | Yes | |
| Knock Sensor | `knock_sensor` | Yes | |
| MAP Sensor | `map_sensor` | Yes | Manifold Absolute Pressure |
| MAF Sensor | `maf_sensor` | Yes | Mass Air Flow |

#### Subsystem 1.2: Cooling System
**Slug:** `cooling-system`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Radiator | `radiator` | Yes | |
| Radiator Cap | `radiator_cap` | Yes | Pressure rated |
| Radiator Hose (Upper) | `radiator_hose_upper` | Yes | |
| Radiator Hose (Lower) | `radiator_hose_lower` | Yes | |
| Radiator Cooling Fan Assembly | `radiator_fan_assembly` | Yes | Dual fan |
| Radiator Cooling Fan Motor | `radiator_fan_motor` | Yes | |
| Radiator Cooling Fan Motor Relay | `radiator_fan_relay` | Yes | |
| Coolant Reservoir | `coolant_reservoir` | Yes | Overflow tank |
| Coolant Outlet / Water Outlet | `coolant_outlet` | Yes | |
| Thermostat | `thermostat` | Yes | ~195°F opening |
| Thermostat Housing | `thermostat_housing` | Yes | |
| Water Pump | `water_pump` | Yes | Timing chain driven |
| Heater Core | `heater_core` | Yes | Inside dash |
| Heater Hose (Inlet) | `heater_hose_inlet` | Yes | |
| Heater Hose (Outlet) | `heater_hose_outlet` | Yes | |
| Coolant Temperature Sensor (Computer) | `coolant_temp_sensor_computer` | Yes | ECT sensor |

#### Subsystem 1.3: Exhaust System
**Slug:** `exhaust-system`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Exhaust Manifold (Left) | `exhaust_manifold_left` | Yes | With heat shield |
| Exhaust Manifold (Right) | `exhaust_manifold_right` | Yes | With heat shield |
| Catalytic Converter (Left) | `catalytic_converter_left` | Yes | |
| Catalytic Converter (Right) | `catalytic_converter_right` | Yes | |
| Exhaust Pipe (Front) | `exhaust_pipe_front` | Yes | Y-pipe |
| Exhaust Pipe (Rear) | `exhaust_pipe_rear` | Yes | |
| Muffler | `muffler` | Yes | |
| Exhaust Heat Shields | `exhaust_heat_shields` | Yes | Multiple pieces |

---

### SYSTEM 2: Powertrain Management
**Slug:** `powertrain-management`

#### Subsystem 2.1: Fuel Delivery and Air Induction
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Fuel Tank | `fuel_tank` | No | |
| Fuel Pump Module | `fuel_pump_module` | Yes | In-tank |
| Fuel Pressure Control Module | `fuel_pressure_control_module` | Yes | |
| Fuel Lines | `fuel_lines` | Yes | |
| Throttle Body | `throttle_body` | Yes | Electronic |

#### Subsystem 2.2: Ignition System
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Ignition Coils | `ignition_coils` | Yes | Coil-on-plug, set of 6 |
| Ignition Relay | `ignition_relay` | Yes | |

#### Subsystem 2.3: Computers and Control Systems
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Engine Control Module (ECM) | `ecm` | Yes | |
| Body Control Module (BCM) | `bcm` | Yes | Behind glove box |
| Main Relay (Computer/Fuel) | `main_relay_computer` | Yes | |

---

### SYSTEM 3: Transmission and Drivetrain
**Slug:** `transmission-drivetrain`

#### Subsystem 3.1: Automatic Transmission
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Transmission Assembly | `transmission_assembly` | Yes | 6T75 6-speed auto |
| Transmission Fluid | `transmission_fluid` | Yes | Dexron VI |
| Transmission Filter | `transmission_filter` | Yes | Internal |
| Transmission Pan | `transmission_pan` | Yes | With drain plug |
| Transmission Cooler | `transmission_cooler` | Yes | In radiator |
| Transmission Control Module (TCM) | `tcm` | Yes | Often integrated |
| Flex Plate | `flex_plate` | Yes | Between engine and trans |
| Torque Converter | `torque_converter` | Yes | |

#### Subsystem 3.2: Drivetrain
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Differential Assembly | `differential` | Yes | Front diff (FWD) |
| Drive Axle (Left) | `drive_axle_left` | Yes | CV axle |
| Drive Axle (Right) | `drive_axle_right` | Yes | CV axle |
| CV Joints (Inner) | `cv_joint_inner` | Yes | |
| CV Joints (Outer) | `cv_joint_outer` | Yes | |
| Wheel Bearings (Front) | `wheel_bearing_front` | Yes | Hub assembly |
| Wheel Bearings (Rear) | `wheel_bearing_rear` | Yes | Hub assembly |

---

### SYSTEM 4: Brakes and Traction Control
**Slug:** `brakes-traction-control`

#### Subsystem 4.1: Disc Brake System
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Brake Rotor (Front Left) | `brake_rotor_fl` | Yes | Vented |
| Brake Rotor (Front Right) | `brake_rotor_fr` | Yes | Vented |
| Brake Rotor (Rear Left) | `brake_rotor_rl` | Yes | Solid |
| Brake Rotor (Rear Right) | `brake_rotor_rr` | Yes | Solid |
| Brake Caliper (Front Left) | `brake_caliper_fl` | Yes | Floating |
| Brake Caliper (Front Right) | `brake_caliper_fr` | Yes | Floating |
| Brake Caliper (Rear Left) | `brake_caliper_rl` | Yes | Floating |
| Brake Caliper (Rear Right) | `brake_caliper_rr` | Yes | Floating |
| Brake Pads (Front) | `brake_pads_front` | Yes | ~30-50K miles |
| Brake Pads (Rear) | `brake_pads_rear` | Yes | ~30-50K miles |
| Brake Pad Wear Sensors | `brake_wear_sensors` | Yes | |

#### Subsystem 4.2: Hydraulic System
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Brake Master Cylinder | `brake_master_cylinder` | Yes | |
| Brake Booster | `brake_booster` | Yes | Vacuum assisted |
| Brake Lines (Front) | `brake_lines_front` | Yes | Steel and rubber |
| Brake Lines (Rear) | `brake_lines_rear` | Yes | Steel and rubber |
| Brake Hoses (Front) | `brake_hoses_front` | Yes | Rubber flex hoses |
| Brake Hoses (Rear) | `brake_hoses_rear` | Yes | Rubber flex hoses |
| Brake Fluid | `brake_fluid` | Yes | DOT 3, flush every 2-3 yrs |
| ABS Hydraulic Unit | `abs_hydraulic_unit` | Yes | Part of EBCM |

#### Subsystem 4.3: Parking Brake
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Parking Brake Cable | `parking_brake_cable` | Yes | |
| Parking Brake Shoes | `parking_brake_shoes` | Yes | Inside rear rotors |
| Parking Brake Pedal/Handle | `parking_brake_pedal` | Yes | |

#### Subsystem 4.4: Traction Control / ABS
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Electronic Brake Control Module (EBCM) | `ebcm` | Yes | |
| Wheel Speed Sensor (FL) | `wheel_speed_sensor_fl` | Yes | |
| Wheel Speed Sensor (FR) | `wheel_speed_sensor_fr` | Yes | |
| Wheel Speed Sensor (RL) | `wheel_speed_sensor_rl` | Yes | |
| Wheel Speed Sensor (RR) | `wheel_speed_sensor_rr` | Yes | |
| Yaw Rate Sensor | `yaw_rate_sensor` | Yes | Stability control |
| Steering Angle Sensor | `steering_angle_sensor` | Yes | |
