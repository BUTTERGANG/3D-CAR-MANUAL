# 3D Car Manual — 2011 Chevrolet Traverse FWD V6-3.6L

Interactive 3D vehicle maintenance manual with AI-assisted diagnostics.

## Project Overview

A web-based 3D interactive model of a 2011 Chevrolet Traverse LTZ. Click on any part of the vehicle to get maintenance info, service procedures, troubleshooting guidance, and AI-assisted diagnosis.

## Tech Stack (Planned)

- **Frontend:** React + TypeScript, Three.js / React Three Fiber
- **Backend:** Node.js / Express, PostgreSQL
- **AI:** Python FastAPI microservice (RAG-based diagnostics)
- **3D:** Blender (modeling) → GLTF → Three.js
- **Hardware:** nRF52840 + BLE via Web Bluetooth API (future)

## Repository Structure

```
3D-CAR-MANUAL/
├── docs/
│   ├── README.md                    # Project summary
│   ├── data-model.md                # Full component hierarchy (300+ parts)
│   └── charm-li-component-map.md    # Raw factory service manual index
├── data/
│   ├── sql/
│   │   ├── schema.sql               # 11-table PostgreSQL schema
│   │   └── seed-systems.sql         # Systems, subsystems, zones seed data
│   └── json/                        # (future) Component data as JSON
├── src/                             # (future) Application source code
└── README.md                        # This file
```

## Data Model

- **18 systems** (Engine, Brakes, Suspension, HVAC, etc.)
- **~40 subsystems** (e.g., Engine → Cylinder Head, Timing, Lubrication)
- **300+ components** with mesh names for 3D model linking
- **12 clickable 3D zones** (engine bay, wheel wells, interior, etc.)
- **40+ maintenance procedures** with intervals, difficulty, tools, parts
- **9 database tables** with full relational structure

## Data Sources

- [charm.li](https://charm.li/Chevrolet/2011/Traverse%20FWD%20V6-3.6L/) — Factory service manual (Operation CHARM)
- [chevymanuals.org](https://www.chevymanuals.org/) — Owner's manual PDF
- YouTube teardown videos — Visual reference for 3D modeling

## Roadmap

- [ ] Phase 1: Data & documentation (current)
- [ ] Phase 2: 3D model (Blender → GLTF)
- [ ] Phase 3: Web frontend (React + Three.js)
- [ ] Phase 4: Backend API (Node.js + PostgreSQL)
- [ ] Phase 5: AI diagnostics (Python FastAPI + RAG)
- [ ] Phase 6: Maintenance tracking & reminders

## License

TBD
