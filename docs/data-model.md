# 2011 Chevrolet Traverse FWD V6-3.6L — Complete Data Model
## 3D Car Project: Component Hierarchy & Database Schema

---

## DATABASE SCHEMA

### Tables

#### 1. `systems` — Top-level vehicle systems
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| name | VARCHAR | System name (e.g., "Engine, Cooling and Exhaust") |
| slug | VARCHAR | URL-safe slug |
| description | TEXT | System overview |
| sort_order | INT | Display priority |
| icon | VARCHAR | Icon identifier for UI |

#### 2. `subsystems` — Sub-divisions within systems
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| system_id | FK → systems.id | Parent system |
| name | VARCHAR | Subsystem name (e.g., "Engine", "Cooling System") |
| slug | VARCHAR | URL-safe slug |
| description | TEXT | Subsystem overview |
| sort_order | INT | Display priority |

#### 3. `components` — Individual serviceable parts/assemblies
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| subsystem_id | FK → subsystems.id | Parent subsystem |
| system_id | FK → systems.id | Denormalized for quick queries |
| name | VARCHAR | Component name |
| slug | VARCHAR | URL-safe slug |
| description | TEXT | Component description |
| location_description | TEXT | Where it sits in the vehicle |
| part_number | VARCHAR | OEM part number (if available) |
| diagram_url | URL | Link to exploded diagram |
| charm_li_url | URL | Direct link to charm.li page |
| mesh_name | VARCHAR | Name of the 3D mesh in Blender/Three.js |
| sort_order | INT | Display priority |
| is_serviceable | BOOLEAN | Can the user service this? |
| is_clickable | BOOLEAN | Is this a clickable zone in 3D? |

#### 4. `maintenance_tasks` — Service procedures
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| component_id | FK → components.id | Related component |
| name | VARCHAR | Task name (e.g., "Replace serpentine belt") |
| description | TEXT | Procedure overview |
| interval_miles | INT | Service interval in miles |
| interval_months | INT | Service interval in months |
| difficulty | ENUM | easy / medium / hard / professional |
| estimated_time_minutes | INT | How long it takes |
| tools_needed | JSON | List of required tools |
| parts_needed | JSON | List of required parts with part numbers |
| steps | JSON | Ordered list of procedure steps |
| video_url | URL | YouTube tutorial link |
| charm_li_url | URL | Link to service manual procedure |
| tsb_refs | JSON | Related Technical Service Bulletins |

#### 5. `symptoms` — Diagnostic symptoms
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| name | VARCHAR | Symptom name (e.g., "Engine overheating") |
| description | TEXT | Detailed description |
| system_id | FK → systems.id | Related system |
| possible_causes | JSON | List of possible component failures |
| diagnostic_steps | JSON | Ordered diagnostic procedure |
| severity | ENUM | low / medium / high / critical |
| charm_li_url | URL | Link to diagnostic procedure |

#### 6. `dtcs` — Diagnostic Trouble Codes
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| code | VARCHAR | DTC code (e.g., "P0301") |
| description | TEXT | What the code means |
| system_id | FK → systems.id | Related system |
| possible_causes | JSON | List of possible causes |
| diagnostic_steps | JSON | How to diagnose |
| charm_li_url | URL | Link to DTC info |

#### 7. `tsbs` — Technical Service Bulletins
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| tsb_number | VARCHAR | GM TSB number |
| title | VARCHAR | TSB title |
| description | TEXT | Summary |
| system_id | FK → systems.id | Related system |
| affected_components | JSON | List of component IDs |
| date_issued | DATE | When published |
| charm_li_url | URL | Link to TSB |

#### 8. `specifications` — Torque specs, fluid capacities, etc.
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| system_id | FK → systems.id | Related system |
| component_id | FK → components.id | Related component (optional) |
| spec_type | ENUM | torque / capacity / dimension / pressure / gap / other |
| name | VARCHAR | Spec name (e.g., "Spark plug gap") |
| value | VARCHAR | Spec value |
| unit | VARCHAR | Unit of measurement |
| notes | TEXT | Additional notes |

#### 9. `user_maintenance_log` — User's personal maintenance records
| Column | Type | Description |
|--------|------|-------------|
| id | PK | Unique identifier |
| user_id | FK | User who performed the work |
| component_id | FK → components.id | What was serviced |
| task_id | FK → maintenance_tasks.id | What was done |
| date_performed | DATE | When |
| mileage | INT | Vehicle mileage at time of service |
| notes | TEXT | User notes |
| cost | DECIMAL | How much it spent |
| parts_used | JSON | What parts were used |

---

## COMPLETE COMPONENT HIERARCHY (Part 1)

See [data-model-part1.md](data-model-part1.md) for Systems 1-4 and [data-model-part2.md](data-model-part2.md) for Systems 5-16, 3D Zones, and Maintenance Schedule.
