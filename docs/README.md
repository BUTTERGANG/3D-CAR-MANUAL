# Data Model Summary

## Source Files
- Full component hierarchy: `data-model.md`
- charm.li reference: `charm-li-component-map.md`

## Database: 9 Tables

1. systems — 16 top-level vehicle systems
2. subsystems — ~40 subsystems (e.g., Engine, Cooling, Brakes)
3. components — 300+ individual serviceable parts
4. maintenance_tasks — Service procedures per component
5. symptoms — Diagnostic symptoms linked to DTCs and components
6. dtcs — Diagnostic Trouble Codes
7. tsbs — Technical Service Bulletins
8. specifications — Torque, capacity, gap specs
9. user_maintenance_log — User's service history

## Key Design Decisions
- Every component has a `mesh_name` field for 3D model linking
- `charm_li_url` links back to factory service manual
- `is_clickable` flags which parts are interactive in the 3D viewer
- `is_serviceable` distinguishes user-serviceable vs professional-only
- Components denormalized with `system_id` for fast queries across hierarchies
- Maintenance tasks include intervals, difficulty, time estimates, tools, parts, steps
- Symptoms link to possible component failures for AI-assisted diagnosis

## 3D Zones: 12 clickable regions
- Engine Bay, 4x Wheel Wells, Front End, Rear End, Underbody, Interior, Roof, Left/Right Sides
- Each zone maps to relevant systems/components

## Scale
- 16 systems
- ~40 subsystems
- 300+ components with mesh names
- 40+ maintenance procedures with full specs
- 12 3D interactive zones
