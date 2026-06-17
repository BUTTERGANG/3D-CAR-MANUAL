# Data Conventions — 3D-CAR-MANUAL

## Source Rule
Every row in `maintenance_tasks` and `specifications` must have a `charm_li_url` pointing to the exact charm.li page it came from. No data invented. If charm.li doesn't cover it, the field stays NULL or is flagged `needs-source` — never filled with a plausible guess. This is maintenance data for a real vehicle; fabricated specs are a safety problem, not just a data quality issue.

Primary source: https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/
Full manual zip: https://charm.li/bundle/long-names/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/

## Critical: Never Infer SERIAL IDs by Position

**The rule:** Always look up `component_id` values by `slug` from the live database before writing any seed file. Never guess or infer them by counting rows or assuming components are inserted in a predictable order.

**Why this matters:** SERIAL IDs are assigned at load time. System 1 (Engine) alone has 86 components, so by the time System 4 (Brakes) loads, its first component has id=111, not id=8. Hardcoding id=8 to mean "Brake Rotor (Front Left)" silently maps your procedure to a Camshaft instead — and that error passes a load with no warnings.

This exact failure was caught during the System 4 (Brakes) generalization test and took a full cleanup cycle to fix. It would have been much harder to trace at System 11 or 12.

**How to look up IDs before writing a seed:**

```sql
-- Get all component IDs for a system by slug (safe to run against live DB)
SELECT c.id, c.name, c.slug, ss.name AS subsystem
FROM components c
JOIN subsystems ss ON c.subsystem_id = ss.id
WHERE ss.system_id = <N>
ORDER BY c.id;

-- Or look up a specific component by slug
SELECT id FROM components WHERE slug = 'thermostat';
SELECT id FROM components WHERE slug = 'brake-pads-front';
```

Run this query first, paste the output into comments at the top of your seed file, then write the INSERTs using those IDs.

## Seed File Header Template

Every maintenance task or specification seed file should start with this block:

```sql
-- Seed data: Maintenance Tasks — System N: <System Name>
-- 2011 Chevrolet Traverse FWD V6-3.6L
-- Source: charm.li / Operation CHARM (Factory Service Manual)
-- Target DB: PostgreSQL via Neon DB (use SERIAL/JSONB — not SQLite types)
--
-- COMPONENT IDs (looked up by slug — do not infer from position):
-- Run before writing: SELECT c.id, c.name, c.slug FROM components c
--                     JOIN subsystems ss ON c.subsystem_id = ss.id
--                     WHERE ss.system_id = N ORDER BY c.id;
--
-- <paste the query output here as comments>
-- e.g.:
--   71  | Thermostat               | thermostat
--   69  | Coolant Reservoir        | coolant-reservoir
--   128 | Brake Fluid              | brake-fluid
```

## JSONB Formatting

JSONB array values in seed files must use unescaped double quotes inside single-quoted SQL strings:

```sql
-- CORRECT:
'["item one", "item two"]'::jsonb

-- WRONG (causes parse error on load):
'[\"item one\", \"item two\"]'::jsonb
```

The backslash-escaped form works in some editors and SQLite but fails on PostgreSQL's JSON parser.

## Safety-Sensitive Systems

Brake and Restraints (airbag/seatbelt) data require extra sourcing care — wrong specs in these systems are a safety issue, not a data quality issue. For these systems:
- Pull every spec directly from the charm.li factory service manual page, not from memory or secondary sources
- Double-check numeric values (torque specs, wear limits, capacities) against the source before committing
- Note the exact charm.li section in both the `charm_li_url` field and a comment in the seed file

## Validation Before Commit

After loading any new seed file, run `psql $DATABASE_URL -f data/sql/validate.sql` and verify:
- Q4 (orphan check) returns 0 rows
- Q3/Q7/Q8 show correct component names — not engine parts appearing under brake specs, etc.

Batch validation (2-3 systems at once) is acceptable once the pattern is established, but Restraints should always be validated individually.
