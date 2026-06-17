# Database Setup — Neon DB (PostgreSQL)

## Target Database: PostgreSQL 16+ via Neon DB Free Tier

### Why PostgreSQL (not SQLite)?
- Concurrent user support (Node/Express backend + multiple clients)
- JSONB for efficient JSON querying and indexing
- SERIAL for reliable auto-incrementing primary keys
- Production-ready on Neon DB free tier (no Docker required)

### Setup Steps

1. **Create Neon DB project:**
   - Go to https://neon.tech and sign up (free tier)
   - Create a new project (region closest to you)
   - Copy the connection string from the dashboard
   - Format: `postgresql://user:password@ep-xxx.region.neon.tech/dbname?sslmode=require`

2. **Set environment variable:**
   ```bash
   export DATABASE_URL='postgresql://user:password@ep-xxx.region.neon.tech/dbname?sslmode=require'
   ```

3. **Load schema and seed data:**
   ```bash
   psql $DATABASE_URL -f data/sql/schema.sql
   psql $DATABASE_URL -f data/sql/seed-systems.sql
   psql $DATABASE_URL -f data/sql/seed-components-system1.sql
   psql $DATABASE_URL -f data/sql/seed-components-system2.sql
   psql $DATABASE_URL -f data/sql/seed-components-system3.sql
   psql $DATABASE_URL -f data/sql/seed-components-system4.sql
   psql $DATABASE_URL -f data/sql/seed-components-system5.sql
   psql $DATABASE_URL -f data/sql/seed-components-system6.sql
   psql $DATABASE_URL -f data/sql/seed-maintenance-engine.sql
   ```

4. **Run validation queries:**
   ```bash
   psql $DATABASE_URL -f data/sql/validate.sql
   ```

### Expected Validation Results
- Q1: 1 row — Oil Filter → Engine Oil and Filter Change (easy, 5000mi/6mo)
- Q2: 1 row — Coolant procedure → Coolant Temperature Sensor → Engine system
- Q3: 9 rows — all specs resolve to components (or system-level)
- Q4: 0 rows — no orphan procedures
- Q5: 18 systems, 190 components, 7 procedures (all in Engine system)
- Q6: JSONB arrays parse correctly with jsonb_array_length()
