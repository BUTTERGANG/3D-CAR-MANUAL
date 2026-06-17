-- Seed data: Maintenance Tasks — System 4: Brakes and Traction Control
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- Source: charm.li / Operation CHARM (Factory Service Manual)
-- Each procedure includes the charm_li_url for traceability
-- Note: JSONB values use standard JSON double quotes within SQL single-quoted strings

-- ============================================================
-- FRONT BRAKE PAD REPLACEMENT
-- Component: Brake Pads (Front) (id=16)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Pad/Service%20and%20Repair/Removal%20and%20Replacement/Front%20Disc%20Brake%20Pads%20Replacement/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    16,
    'Front Brake Pad Replacement',
    'Replace front disc brake pads. Inspect rotor for scoring, thickness variation, and lateral runout. Replace pads if wear limit reaches 0.76 mm (0.030 in). Always replace in axle sets.',
    30000,
    24,
    'medium',
    60,
    '[\"Jack and jack stands\", \"Lug wrench\", \"C-clamp or caliper piston tool\", \"Socket set (15mm for caliper bolts)\", \"Torque wrench\", \"Brake cleaner\", \"Wire brush\", \"Anti-seize compound\", \"Brake pad grease\"]'::jsonb,
    '[\"Front brake pad set (AC Delco or equivalent)\", \"Brake pad hardware kit (recommended)\", \"Brake cleaner spray\"]'::jsonb,
    '[\"Raise vehicle and support on jack stands\", \"Remove front wheels\", \"Ins brake fluid level in master cylinder reservoir - remove fluid if above midway\", \"Remove caliper mounting bolts from caliper bracket\", \"Support caliper with mechanics wire - do not hang by brake hose\", \"Remove brake pads from caliper bracket\", \"Inspect caliper bolts for binding, seizing, or damage\", \"Inspect caliper boots for cracks or tears\", \"Clean caliper bracket contact surfaces with wire brush\", \"Compress caliper pistons using C-clamp - open bleed screw slightly to ease pressure\", \"Apply anti-seize to caliper slider pins\", \"Install new brake pads and hardware\", \"Reinstall caliper onto bracket\", \"Torque caliper mounting bolts to specification\", \"Repeat for other side\", \"Reinstall wheels and torque lug nuts\", \"Pump brake pedal until firm before driving\", \"Perform brake pad burnishing procedure (20 stops from 30 mph)\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Pad/Service%20and%20Repair/Removal%20and%20Replacement/Front%20Disc%20Brake%20Pads%20Replacement/'
);

-- ============================================================
-- REAR BRAKE PAD REPLACEMENT
-- Component: Brake Pads (Rear) (id=17)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Pad/Service%20and%20Repair/Removal%20and%20Replacement/Rear%20Disc%20Brake%20Pads%20Replacement/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    17,
    'Rear Brake Pad Replacement',
    'Replace rear disc brake pads. Inspect rotor condition and thickness. Rear pads typically wear slower than front. Replace if wear limit reaches 0.76 mm (0.030 in). Always replace in axle sets.',
    40000,
    36,
    'medium',
    60,
    '[\"Jack and jack stands\", \"Lug wrench\", \"C-clamp or caliper piston tool\", \"Socket set (15mm for caliper bolts)\", \"Torque wrench\", \"Brake cleaner\", \"Wire brush\", \"Anti-seize compound\"]'::jsonb,
    '[\"Rear brake pad set (AC Delco or equivalent)\", \"Brake pad hardware kit (recommended)\", \"Brake cleaner spray\"]'::jsonb,
    '[\"Raise vehicle and support on jack stands\", \"Remove rear wheels\", \"Remove caliper from caliper mounting bracket\", \"Remove brake pads from caliper bracket\", \"Inspect pad mounting hardware for corrosion, bent tabs, looseness\", \"Inspect caliper bolts for binding, seizing, looseness, or damage\", \"Inspect caliper boots\", \"Clean bracket contact surfaces\", \"Compress rear caliper pistons - note: some models require rotation while compressing\", \"Install new brake pads and hardware\", \"Reinstall caliper\", \"Torque caliper mounting bolts to specification\", \"Repeat for other side\", \"Reinstall wheels and torque lug nuts\", \"Pump brake pedal until firm before driving\", \"Perform burnishing procedure\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Pad/Service%20and%20Repair/Removal%20and%20Replacement/Rear%20Disc%20Brake%20Pads%20Replacement/'
);

-- ============================================================
-- FRONT BRAKE ROTOR REPLACEMENT
-- Component: Brake Rotor (Front Left) (id=8)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Rotor%2FDisc/Service%20and%20Repair/Removal%20and%20Replacement/Front%20Brake%20Rotor%20Replacement/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    8,
    'Front Brake Rotor Replacement',
    'Replace front brake rotor. Check rotor thickness, thickness variation (max 0.025mm/0.001in), lateral runout, and surface condition. Clean hub mating surface. Always replace in axle sets.',
    50000,
    48,
    'medium',
    90,
    '[\"Jack and jack stands\", \"Lug wrench\", \"Socket set\", \"Torque wrench\", \"Wire brush or hub resurfacing tool\", \"Brake cleaner\", \"Anti-seize compound\", \"Dial indicator (for runout check)\", \"Micrometer (for thickness check)\"]'::jsonb,
    '[\"Front brake rotor (AC Delco or equivalent) - match to side (left/right)\", \"Brake cleaner\"]'::jsonb,
    '[\"Raise vehicle and support on jack stands\", \"Remove wheel\", \"Remove caliper and support with wire\", \"Remove caliper bracket if needed\", \"Remove brake rotor - may require puller if rusted to hub\", \"Clean hub/axle flange mating surface thoroughly\", \"Check hub for rust or contaminants - clean with wire brush or CH-42450-A hub resurfacing kit\", \"Install new rotor onto hub using matchmarks for alignment\", \"Hold rotor in place and install conical washers and lug nuts to secure\", \"Reinstall caliper bracket if removed\", \"Install new brake pads (recommended when replacing rotors)\", \"Reinstall caliper\", \"Torque all fasteners to specification\", \"Reinstall wheel and torque lug nuts\", \"Pump brake pedal until firm\", \"Perform brake pad and rotor burnishing procedure\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Rotor%2FDisc/Service%20and%20Repair/Removal%20and%20Replacement/Front%20Brake%20Rotor%20Replacement/'
);

-- ============================================================
-- REAR BRAKE ROTOR REPLACEMENT
-- Component: Brake Rotor (Rear Left) (id=10)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Rotor%2FDisc/Service%20and%20Repair/Removal%20and%20Replacement/Rear%20Brake%20Rotor%20Replacement/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    10,
    'Rear Brake Rotor Replacement',
    'Replace rear brake rotor. Check all measurements before replacement. Clean hub surface. Always replace in axle sets.',
    60000,
    48,
    'medium',
    90,
    '[\"Jack and jack stands\", \"Lug wrench\", \"Socket set\", \"Torque wrench\", \"Wire brush\", \"Brake cleaner\", \"Anti-seize compound\", \"Dial indicator\", \"Micrometer\"]'::jsonb,
    '[\"Rear brake rotor (AC Delco or equivalent) - match to side\", \"Brake cleaner\"]'::jsonb,
    '[\"Raise vehicle and support on jack stands\", \"Remove wheel\", \"Remove caliper and caliper bracket\", \"Remove brake rotor\", \"Clean hub/axle flange mating surface thoroughly\", \"Install new rotor with matchmark alignment\", \"Secure rotor with conical washers and lug nuts\", \"Reinstall caliper bracket and caliper\", \"Install new brake pads\", \"Torque all fasteners\", \"Reinstall wheel\", \"Pump brake pedal until firm\", \"Perform burnishing procedure\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Rotor%2FDisc/Service%20and%20Repair/Removal%20and%20Replacement/Rear%20Brake%20Rotor%20Replacement/'
);

-- ============================================================
-- BRAKE FLUID FLUSH
-- Component: Brake Fluid (id=30)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Maintenance/Fluids/Brake%20Fluid/
-- Specification: DOT 3 Hydraulic Brake Fluid (GM Part No. 88862806 US / 88862807 Canada)
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    30,
    'Brake Fluid Flush',
    'Flush and replace brake fluid. Use DOT 3 hydraulic brake fluid (GM 88862806). Bleed all four corners starting from the farthest wheel from master cylinder (RR, LR, RF, LF). Flush every 2-3 years regardless of mileage to prevent moisture contamination.',
    30000,
    36,
    'medium',
    90,
    '[\"Jack and jack stands\", \"Lug wrench\", \"8mm and 11mm flare nut wrenches\", \"Clear vinyl hose\", \"Bleeder bottle or catch container\", \"Brake cleaner\", \"Turkey baster or syringe (for reservoir)\", \"Assistant (for pedal depression)\"]'::jsonb,
    '[\"DOT 3 brake fluid (GM 88862806 or equivalent) - minimum 1 quart\", \"Brake cleaner\"]'::jsonb,
    '[\"Remove old brake fluid from master cylinder reservoir using turkey baster\", \"Fill reservoir with fresh DOT 3 brake fluid\", \"Raise vehicle and support on jack stands\", \"Remove all four wheels for access\", \"Start bleeding from right rear (farthest from master cylinder)\", \"Attach clear hose to bleeder valve, submerge other end in bottle with fluid\", \"Have assistant slowly press brake pedal\", \"Open bleeder valve - watch for dark/old fluid\", \"Close bleeder valve before assistant releases pedal\", \"Repeat until fluid runs clear\", \"Move to left rear, repeat procedure\", \"Move to right front, repeat procedure\", \"Move to left front, repeat procedure\", \"Check reservoir level frequently - never let it run dry\", \"Top off reservoir after each wheel\", \"After all wheels bled: refill reservoir to MAX line\", \"Pump brake pedal to check for firm feel\", \"Test drive at low speed to verify brake function\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Maintenance/Fluids/Brake%20Fluid/'
);

-- ============================================================
-- FRONT BRAKE CALIPER REPLACEMENT
-- Component: Brake Caliper (Front Left) (id=12)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Caliper/Service%20and%20Repair/Front%20Brake%20Caliper%20Replacement/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    12,
    'Front Brake Caliper Replacement',
    'Replace front brake caliper if seized, leaking, or damaged. Always replace in axle sets if possible. Inspect brake hose for damage during replacement. Bleed brakes after installation.',
    NULL,
    NULL,
    'hard',
    120,
    '[\"Jack and jack stands\", \"Lug wrench\", \"Flare nut wrenches (11mm, 13mm)\", \"Socket set\", \"Torque wrench\", \"Brake cleaner\", \"C-clamp\", \"Brake line cap plugs\"]'::jsonb,
    '[\"Front brake caliper (AC Delco or equivalent)\", \"Brake hose crush washers (if replacing hose)\", \"DOT 3 brake fluid\", \"Brake cleaner\"]'::jsonb,
    '[\"Raise vehicle and support on jack stands\", \"Remove wheel\", \"Place drain pan under caliper\", \"Disconnect brake line from caliper using flare nut wrench - cap line immediately\", \"Remove caliper mounting bolts\", \"Remove caliper from bracket\", \"If reusing bracket: inspect bushings and clean\", \"Transfer brake pads to new caliper if reuseable\", \"Install new caliper onto bracket\", \"Reconnect brake line with new crush washers\", \"Torque caliper mounting bolts and brake line fitting\", \"Compress caliper pistons if needed\", \"Bleed brake circuit (start with this caliper)\", \"Reinstall wheel\", \"Pump brake pedal to firm feel\", \"Test drive slowly in safe area to verify\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Brake%20Caliper/Service%20and%20Repair/Front%20Brake%20Caliper%20Replacement/'
);

-- ============================================================
-- DISC BRAKE SYSTEM INSPECTION
-- Component: Brake Pads (Front) (id=16)
-- Source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Testing%20and%20Inspection/Front%20Disc%20Brake%20Mounting%20and%20Hardware%20Inspection/
-- ============================================================
INSERT INTO maintenance_tasks (
    component_id, name, description,
    interval_miles, interval_months,
    difficulty, estimated_time_minutes,
    tools_needed, parts_needed, steps,
    charm_li_url
) VALUES (
    16,
    'Disc Brake System Inspection',
    'Comprehensive inspection of disc brake system including pad thickness, rotor condition, caliper operation, and hardware. Check pad wear limit (0.76mm/0.030in), rotor scoring (max 1.50mm/0.059in), thickness variation (max 0.025mm/0.001in), and lateral runout.',
    10000,
    12,
    'easy',
    30,
    '[\"Jack and jack stands\", \"Lug wrench\", \"Brake cleaner\", \"Micrometer or caliper gauge\", \"Flashlight\", \"Dial indicator (optional)\"]'::jsonb,
    '[\"Brake cleaner (for cleaning friction surfaces)\"]'::jsonb,
    '[\"Check brake fluid level in master cylinder reservoir\", \"Raise vehicle and support on jack stands\", \"Remove wheels for full access\", \"Inspect brake caliper housing for leaks and damage\", \"Check caliper mounting bolts and brackets\", \"Compress caliper pistons slightly to check movement\", \"Remove caliper mounting bolts and slide caliper off bracket\", \"Remove brake pads from bracket\", \"Inspect pad mounting hardware: check for missing parts, corrosion, bent tabs\", \"Measure brake pad thickness - replace if at or below 0.76mm (0.030in)\", \"Inspect rotor friction surfaces: check for cracks, heat spots, bluing\", \"Measure rotor groove depth - replace if scoring exceeds 1.50mm (0.059in)\", \"Check rotor thickness variation - replace if exceeds 0.025mm (0.001in)\", \"Inspect caliper slides and bushings for smooth operation\", \"Clean all contact surfaces\", \"Reassemble and torque all fasteners\", \"Reinstall wheels\"]'::jsonb,
    'https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/Repair%20and%20Diagnosis/Brakes%20and%20Traction%20Control/Disc%20Brake%20System/Testing%20and%20Inspection/Front%20Disc%20Brake%20Mounting%20and%20Hardware%20Inspection/'
);

-- ============================================================
-- SPECIFICATIONS — Brake System
-- Source: charm.li factory service manual specifications
-- ============================================================

-- Brake pad wear limit
INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(4, 16, 'dimension', 'Brake Pad Minimum Thickness (Front)', '0.76', 'mm', 'Replace front pads at or below this thickness. Source: charm.li Specifications > Mechanical > Disc Brake System > Brake Pad'),
(4, 17, 'dimension', 'Brake Pad Minimum Thickness (Rear)', '0.76', 'mm', 'Replace rear pads at or below this thickness. Source: charm.li Specifications > Mechanical > Disc Brake System > Brake Pad');

-- Rotor specifications
INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(4, 8, 'dimension', 'Brake Rotor Maximum Scoring Depth (Front)', '1.50', 'mm', 'Rotor requires refinishing or replacement if scoring exceeds this. Surface: 0.059in'),
(4, 9, 'dimension', 'Brake Rotor Maximum Scoring Depth (Front)', '1.50', 'mm', 'Rotor requires refinishing or replacement if scoring exceeds this. Surface: 0.059in'),
(4, 10, 'dimension', 'Brake Rotor Maximum Scoring Depth (Rear)', '1.50', 'mm', 'Rotor requires refinishing or replacement if scoring exceeds this. Surface: 0.059in'),
(4, 11, 'dimension', 'Brake Rotor Maximum Scoring Depth (Rear)', '1.50', 'mm', 'Rotor requires refinishing or replacement if scoring exceeds this. Surface: 0.059in');

-- Rotor thickness variation
INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(4, 8, 'dimension', 'Brake Rotor Maximum Thickness Variation', '0.025', 'mm', 'Exceeding this causes brake pulsation. Must be checked before LRO measurement. Source: charm.li'),
(4, 9, 'dimension', 'Brake Rotor Maximum Thickness Variation', '0.025', 'mm', 'Exceeding this causes brake pulsation. Must be checked before LRO measurement. Source: charm.li'),
(4, 10, 'dimension', 'Brake Rotor Maximum Thickness Variation', '0.025', 'mm', 'Exceeding this causes brake pulsation. Source: charm.li'),
(4, 11, 'dimension', 'Brake Rotor Maximum Thickness Variation', '0.025', 'mm', 'Exceeding this causes brake pulsation. Source: charm.li');

-- Fluid specification
INSERT INTO specifications (system_id, component_id, spec_type, name, value, unit, notes) VALUES
(4, 30, 'other', 'Brake Fluid Type', 'DOT 3', 'N/A', 'GM Part No. 88862806 (US) / 88862807 (Canada). Source: charm.li Specifications > Fluid Type > Brake Fluid');
