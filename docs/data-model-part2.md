# 2011 Chevrolet Traverse FWD V6-3.6L — Complete Data Model (Part 2)
## Systems 5-16, 3D Zones, Maintenance Schedule

---

### SYSTEM 5: Steering and Suspension
**Slug:** `steering-suspension`

#### Subsystem 5.1: Steering
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Steering Rack and Pinion | `steering_rack` | Yes | Electric power assist |
| Steering Column | `steering_column` | Yes | |
| Steering Shaft | `steering_shaft` | Yes | |
| Power Steering Motor | `power_steering_motor` | Yes | Column-mounted |
| Tie Rod End (Left) | `tie_rod_end_left` | Yes | |
| Tie Rod End (Right) | `tie_rod_end_right` | Yes | |
| Steering Knuckle (Left) | `steering_knuckle_left` | Yes | |
| Steering Knuckle (Right) | `steering_knuckle_right` | Yes | |

#### Subsystem 5.2: Front Suspension
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Strut Assembly (Front Left) | `strut_assembly_fl` | Yes | Complete strut |
| Strut Assembly (Front Right) | `strut_assembly_fr` | Yes | Complete strut |
| Coil Spring (Front Left) | `coil_spring_fl` | Yes | |
| Coil Spring (Front Right) | `coil_spring_fr` | Yes | |
| Lower Control Arm (Front Left) | `lower_control_arm_fl` | Yes | |
| Lower Control Arm (Front Right) | `lower_control_arm_fr` | Yes | |
| Sway Bar (Front) | `sway_bar_front` | Yes | Stabilizer bar |
| Sway Bar Links (Front) | `sway_bar_links_front` | Yes | |
| Sway Bar Bushings (Front) | `sway_bar_bushings_front` | Yes | |
| Ball Joint (Lower Left) | `ball_joint_lower_left` | Yes | |
| Ball Joint (Lower Right) | `ball_joint_lower_right` | Yes | |

#### Subsystem 5.3: Rear Suspension
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Shock Absorber (Rear Left) | `shock_absorber_rl` | Yes | |
| Shock Absorber (Rear Right) | `shock_absorber_rr` | Yes | |
| Coil Spring (Rear Left) | `coil_spring_rl` | Yes | |
| Coil Spring (Rear Right) | `coil_spring_rr` | Yes | |
| Trailing Arm (Rear Left) | `trailing_arm_rl` | Yes | |
| Trailing Arm (Rear Right) | `trailing_arm_rr` | Yes | |
| Lateral Link (Rear) | `lateral_link_rear` | Yes | |
| Sway Bar (Rear) | `sway_bar_rear` | Yes | |
| Sway Bar Links (Rear) | `sway_bar_links_rear` | Yes | |

#### Subsystem 5.4: Wheels and Tires
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Wheel (Front Left) | `wheel_fl` | Yes | 18" or 19" alloy |
| Wheel (Front Right) | `wheel_fr` | Yes | |
| Wheel (Rear Left) | `wheel_rl` | Yes | |
| Wheel (Rear Right) | `wheel_rr` | Yes | |
| Tire (Front Left) | `tire_fl` | Yes | P255/65R18 |
| Tire (Front Right) | `tire_fr` | Yes | |
| Tire (Rear Left) | `tire_rl` | Yes | |
| Tire (Rear Right) | `tire_rr` | Yes | |
| Tire Pressure Sensor (FL) | `tpms_sensor_fl` | Yes | |
| Tire Pressure Sensor (FR) | `tpms_sensor_fr` | Yes | |
| Tire Pressure Sensor (RL) | `tpms_sensor_rl` | Yes | |
| Tire Pressure Sensor (RR) | `tpms_sensor_rr` | Yes | |
| Spare Tire | `spare_tire` | Yes | Compact, under vehicle |

---

### SYSTEM 6: Starting and Charging
**Slug:** `starting-charging`

#### Subsystem 6.1: Starting System
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Starter Motor | `starter_motor` | Yes | |
| Starter Solenoid | `starter_solenoid` | Yes | Integral to starter |
| Starter Relay | `starter_relay` | Yes | |
| Ignition Switch | `ignition_switch` | Yes | |
| Battery | `battery` | Yes | Group 48, ~650 CCA |
| Battery Cables (Positive) | `battery_cable_positive` | Yes | |
| Battery Cables (Negative) | `battery_cable_negative` | Yes | |

#### Subsystem 6.2: Charging System
| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Alternator | `alternator` | Yes | ~150 amp |
| Alternator Pulley | `alternator_pulley` | Yes | Overrunning clutch type |
| Voltage Regulator | `voltage_regulator` | Yes | Internal to alternator |

---

### SYSTEM 7: Heating and Air Conditioning
**Slug:** `hvac`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| A/C Compressor | `ac_compressor` | Yes | With clutch |
| A/C Compressor Clutch | `ac_compressor_clutch` | Yes | |
| A/C Compressor Relay | `ac_compressor_relay` | Yes | |
| A/C Condenser | `ac_condenser` | Yes | In front of radiator |
| A/C Evaporator | `ac_evaporator` | Yes | Inside dash |
| A/C Expansion Valve | `ac_expansion_valve` | Yes | |
| A/C Receiver/Drier | `ac_receiver_drier` | Yes | |
| A/C Lines | `ac_lines` | Yes | High and low pressure |
| HVAC Control Module | `hvac_control_module` | Yes | |
| HVAC Blower Motor | `hvac_blower_motor` | Yes | |
| HVAC Blower Motor Resistor | `hvac_blower_resistor` | Yes | |
| Cabin Air Filter | `cabin_air_filter` | Yes | Behind glove box |
| Heater Core | `heater_core` | Yes | Inside dash |
| Heater Control Valve | `heater_control_valve` | Yes | |
| HVAC Ducts | `hvac_ducts` | Yes | |

---

### SYSTEM 8: Body and Frame
**Slug:** `body-frame`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Front Bumper Assembly | `front_bumper` | Yes | |
| Rear Bumper Assembly | `rear_bumper` | Yes | |
| Grille | `grille` | Yes | |
| Hood | `hood` | Yes | Aluminum |
| Fender (Front Left) | `fender_fl` | Yes | |
| Fender (Front Right) | `fender_fr` | Yes | |
| Door (Front Left) | `door_fl` | Yes | |
| Door (Front Right) | `door_fr` | Yes | |
| Door (Rear Left) | `door_rl` | Yes | |
| Door (Rear Right) | `door_rr` | Yes | |
| Liftgate | `liftgate` | Yes | Power liftgate (LTZ) |
| Running Boards | `running_boards` | Optional | |
| Roof Rack | `roof_rack` | Optional | |
| Exterior Trim | `exterior_trim` | Yes | Moldings, clips |
| Mirror (Left) | `mirror_left` | Yes | Power, heated |
| Mirror (Right) | `mirror_right` | Yes | Power, heated |
| Frame Rails | `frame_rails` | No | Unibody construction |
| Subframe (Front) | `subframe_front` | Yes | |
| Subframe (Rear) | `subframe_rear` | Yes | |

---

### SYSTEM 9: Lighting and Horns
**Slug:** `lighting-horns`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Headlight Assembly (Left) | `headlight_left` | Yes | Halogen or HID |
| Headlight Assembly (Right) | `headlight_right` | Yes | |
| Headlight Bulb (High Beam) | `headlight_high_beam` | Yes | |
| Headlight Bulb (Low Beam) | `headlight_low_beam` | Yes | |
| Headlamp Control Module | `headlamp_control_module` | Yes | |
| High Beam Relay | `high_beam_relay` | Yes | |
| Low Beam Relay | `low_beam_relay` | Yes | |
| Fog Light (Left) | `fog_light_left` | Yes | LTZ trim |
| Fog Light (Right) | `fog_light_right` | Yes | |
| Fog Lamp Relay | `fog_lamp_relay` | Yes | |
| Front Turn Signal (Left) | `front_turn_signal_left` | Yes | |
| Front Turn Signal (Right) | `front_turn_signal_right` | Yes | |
| Parking Lamp (Left) | `parking_lamp_left` | Yes | |
| Parking Lamp (Right) | `parking_lamp_right` | Yes | |
| Parking Lamp Relay | `parking_lamp_relay` | Yes | |
| Tail Light Assembly (Left) | `taillight_left` | Yes | LED |
| Tail Light Assembly (Right) | `taillight_right` | Yes | LED |
| Brake Light (Left) | `brake_light_left` | Yes | |
| Brake Light (Right) | `brake_light_right` | Yes | |
| Brake Lamp Relay | `brake_lamp_relay` | Yes | |
| Third Brake Light | `third_brake_light` | Yes | Center high mount |
| Reverse Light (Left) | `reverse_light_left` | Yes | |
| Reverse Light (Right) | `reverse_light_right` | Yes | |
| Rear Turn Signal (Left) | `rear_turn_signal_left` | Yes | |
| Rear Turn Signal (Right) | `rear_turn_signal_right` | Yes | |
| License Plate Light | `license_plate_light` | Yes | |
| Side Marker Lights | `side_marker_lights` | Yes | |
| Daytime Running Lights | `drl` | Yes | |
| Trailer Lighting Relay | `trailer_lighting_relay` | Optional | |
| Horn | `horn` | Yes | Dual tone |
| Horn Relay | `horn_relay` | Yes | |
| Horn Switch | `horn_switch` | Yes | Steering wheel |

---

### SYSTEM 10: Windows and Glass
**Slug:** `windows-glass`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Windshield | `windshield` | Yes | Laminated |
| Front Door Glass (Left) | `front_door_glass_left` | Yes | |
| Front Door Glass (Right) | `front_door_glass_right` | Yes | |
| Rear Door Glass (Left) | `rear_door_glass_left` | Yes | |
| Rear Door Glass (Right) | `rear_door_glass_right` | Yes | |
| Rear Window (Liftgate) | `rear_window` | Yes | With defroster |
| Windshield Defroster Nozzle | `windshield_defroster_nozzle` | Yes | |
| Rear Defogger Grid | `rear_defogger` | Yes | Heated glass |
| Window Regulator (FL) | `window_regulator_fl` | Yes | |
| Window Regulator (FR) | `window_regulator_fr` | Yes | |
| Window Regulator (RL) | `window_regulator_rl` | Yes | |
| Window Regulator (RR) | `window_regulator_rr` | Yes | |
| Window Motor (FL) | `window_motor_fl` | Yes | |
| Window Motor (FR) | `window_motor_fr` | Yes | |
| Window Motor (RL) | `window_motor_rl` | Yes | |
| Window Motor (RR) | `window_motor_rr` | Yes | |
| Window Switch (Driver) | `window_switch_driver` | Yes | Master switch |
| Window Switch (Passenger) | `window_switch_passenger` | Yes | |

---

### SYSTEM 11: Wiper and Washer Systems
**Slug:** `wiper-washer`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Wiper Motor | `wiper_motor` | Yes | |
| Wiper Linkage | `wiper_linkage` | Yes | |
| Wiper Arm (Driver) | `wiper_arm_driver` | Yes | |
| Wiper Arm (Passenger) | `wiper_arm_passenger` | Yes | |
| Wiper Blade (Driver) | `wiper_blade_driver` | Yes | ~12 months |
| Wiper Blade (Passenger) | `wiper_blade_passenger` | Yes | ~12 months |
| Washer Fluid Reservoir | `washer_fluid_reservoir` | Yes | |
| Washer Pump | `washer_pump` | Yes | |
| Washer Nozzles | `washer_nozzles` | Yes | |
| Wiper Control Module | `wiper_control_module` | Yes | |

---

### SYSTEM 12: Instrument Panel, Gauges and Warning Indicators
**Slug:** `instrument-panel`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Instrument Cluster | `instrument_cluster` | Yes | Gauges + DIC |
| Speedometer | `speedometer` | Yes | In cluster |
| Tachometer | `tachometer` | Yes | In cluster |
| Fuel Gauge | `fuel_gauge` | Yes | In cluster |
| Temperature Gauge | `temp_gauge` | Yes | In cluster |
| Oil Pressure Gauge | `oil_pressure_gauge` | Yes | In cluster |
| Voltmeter | `voltmeter` | Yes | In cluster |
| Odometer/Trip | `odometer` | Yes | In cluster |
| Warning Lights | `warning_lights` | Yes | In cluster |
| DIC Display | `dic_display` | Yes | Driver Info Center |
| Instrument Panel Trim | `instrument_panel_trim` | Yes | |
| Glove Box | `glove_box` | Yes | |

---

### SYSTEM 13: Cruise Control
**Slug:** `cruise-control`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Cruise Control Module | `cruise_control_module` | Yes | |
| Cruise Control Switch | `cruise_control_switch` | Yes | Steering wheel |
| Cruise Control Servo | `cruise_control_servo` | Yes | Vacuum or electronic |
| Brake Pedal Position Switch | `brake_pedal_position_switch` | Yes | Cancels cruise |

---

### SYSTEM 14: Power and Ground Distribution
**Slug:** `power-ground-distribution`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Power Distribution Module | `power_distribution_module` | Yes | Under hood |
| Power Distribution Relay | `power_distribution_relay` | Yes | |
| Relay Box (Under Hood) | `relay_box_under_hood` | Yes | |
| Relay Box (Interior) | `relay_box_interior` | Yes | |
| Fuse Box (Under Hood) | `fuse_box_under_hood` | Yes | |
| Fuse Box (Interior) | `fuse_box_interior` | Yes | Under dash |
| Auxiliary Power Outlet | `aux_power_outlet` | Yes | 12V accessory |
| Ground Straps | `ground_straps` | Yes | Multiple locations |

---

### SYSTEM 15: Restraints and Safety Systems
**Slug:** `restraints-safety`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Airbag (Driver Front) | `airbag_driver_front` | Yes | After collision only |
| Airbag (Passenger Front) | `airbag_passenger_front` | Yes | |
| Airbag (Driver Side Curtain) | `airbag_driver_curtain` | Yes | |
| Airbag (Passenger Side Curtain) | `airbag_passenger_curtain` | Yes | |
| Airbag (Driver Seat Side) | `airbag_driver_seat` | Yes | |
| Airbag (Passenger Seat Side) | `airbag_passenger_seat` | Yes | |
| Seat Belt (Front Left) | `seatbelt_front_left` | Yes | With pretensioner |
| Seat Belt (Front Right) | `seatbelt_front_right` | Yes | |
| Seat Belt (Rear Left) | `seatbelt_rear_left` | Yes | |
| Seat Belt (Rear Center) | `seatbelt_rear_center` | Yes | |
| Seat Belt (Rear Right) | `seatbelt_rear_right` | Yes | |
| Head Restraint (Front Left) | `head_restraint_fl` | Yes | |
| Head Restraint (Front Right) | `head_restraint_fr` | Yes | |
| Head Restraint (Rear) | `head_restraint_rear` | Yes | |
| Sensing and Diagnostic Module (SDM) | `sdm` | Yes | Airbag control module |
| Seat Belt Pretensioner | `seatbelt_pretensioner` | Yes | |
| Impact Sensors | `impact_sensors` | Yes | Front and side |

---

### SYSTEM 16: Accessories and Optional Equipment
**Slug:** `accessories`

| Component | Mesh Name | Serviceable | Notes |
|-----------|-----------|-------------|-------|
| Radio / Head Unit | `radio_head_unit` | Yes | |
| Speakers | `speakers` | Yes | 6-8 speaker system |
| Amplifier | `amplifier` | Yes | Premium audio |
| Antenna | `antenna` | Yes | |
| Navigation System | `navigation_system` | Optional | |
| GPS Antenna | `gps_antenna` | Optional | |
| Rear Camera | `rear_camera` | Yes | Backup camera |
| Parking Sensors | `parking_sensors` | Optional | |
| Garage Door Opener | `garage_door_opener` | Yes | Homelink |
| Sunroof / Moonroof | `sunroof` | Optional | |
| Power Seat (Driver) | `power_seat_driver` | Yes | |
| Power Seat (Passenger) | `power_seat_passenger` | Yes | |
| Heated Seats | `heated_seats` | Optional | LTZ trim |
| Memory Positioning System | `memory_positioning` | Optional | |
| Trailer Hitch | `trailer_hitch` | Optional | |
| Trailer Connector | `trailer_connector` | Optional | 4-pin or 7-pin |

---

## 3D MODEL ZONE MAPPING

These are the clickable zones in the 3D model, mapped to systems:

| Zone Name | Mesh Group | Systems Included |
|-----------|------------|-----------------|
| Engine Bay | `zone_engine_bay` | Engine, Cooling, Powertrain Mgmt, Starting/Charging, Power/Ground |
| Front Left Wheel Well | `zone_wheel_well_fl` | Brakes (FL), Suspension (FL), Steering (FL) |
| Front Right Wheel Well | `zone_wheel_well_fr` | Brakes (FR), Suspension (FR), Steering (FR) |
| Rear Left Wheel Well | `zone_wheel_well_rl` | Brakes (RL), Suspension (RL) |
| Rear Right Wheel Well | `zone_wheel_well_rr` | Brakes (RR), Suspension (RR) |
| Front End | `zone_front_end` | Lighting (front), Body (front), HVAC (condenser) |
| Rear End | `zone_rear_end` | Lighting (rear), Exhaust, Body (rear) |
| Underbody | `zone_underbody` | Exhaust, Drivetrain, Suspension, Frame |
| Interior | `zone_interior` | Instrument Panel, HVAC, Restraints, Accessories, Windows |
| Roof | `zone_roof` | Sunroof, Roof Rack, Antenna |
| Left Side | `zone_left_side` | Doors (L), Windows (L), Mirrors (L) |
| Right Side | `zone_right_side` | Doors (R), Windows (R), Mirrors (R) |

---

## MAINTENANCE SCHEDULE (Key Intervals)

| Component | Interval (miles) | Interval (months) | Difficulty |
|-----------|------------------|-------------------|------------|
| Oil & Filter Change | 3,000-5,000 | 3-6 | Easy |
| Air Filter | 15,000-30,000 | 12-24 | Easy |
| Cabin Air Filter | 15,000 | 12 | Easy |
| Spark Plugs | 100,000 | 120 | Hard |
| Drive Belt | 60,000-100,000 | 60-120 | Medium |
| Brake Pads (Front) | 30,000-50,000 | 24-48 | Medium |
| Brake Pads (Rear) | 30,000-50,000 | 24-48 | Medium |
| Brake Fluid Flush | 30,000 | 24 | Medium |
| Transmission Fluid | 60,000-100,000 | 60-120 | Medium |
| Coolant Flush | 60,000-100,000 | 60-120 | Medium |
| Tire Rotation | 5,000-7,500 | 6-12 | Easy |
| Wheel Alignment | 12,000 or as needed | 12 | Professional |
| Battery | 36,000-60,000 | 36-60 | Easy |
| Wiper Blades | 6,000-12,000 | 6-12 | Easy |
| Fuel Filter | 60,000 | 60 | Medium |
| Differential Fluid | 60,000 | 60 | Medium |
| Power Steering Fluid | 60,000 | 60 | Easy |
| Timing Chain | 100,000+ | 120+ | Professional |
| Water Pump | 100,000 | 120 | Professional |
| Alternator | 100,000-150,000 | 120-180 | Medium |
| Starter | 100,000-150,000 | 120-180 | Medium |
| Struts/Shocks | 50,000-100,000 | 48-120 | Medium-Hard |
| CV Axles | 80,000-120,000 | 96-144 | Medium |
| Wheel Bearings | 80,000-120,000 | 96-144 | Medium |
| O2 Sensors | 100,000 | 120 | Medium |
| Catalytic Converter | 100,000+ | 120+ | Hard |
| Muffler | 80,000-120,000 | 96-144 | Medium |
| A/C Compressor | 100,000+ | 120+ | Professional |
| Ball Joints | 80,000-120,000 | 96-144 | Medium-Hard |
| Tie Rod Ends | 80,000-100,000 | 96-120 | Medium |
| Sway Bar Links | 60,000-80,000 | 72-96 | Easy-Medium |
