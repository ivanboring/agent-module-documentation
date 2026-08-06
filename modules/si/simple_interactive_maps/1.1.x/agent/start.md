<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Interactive Maps (simple_interactive_maps) — agent index

Embeds **SVG maps with interactive regions** — hover, click, link.
Version **1.1.0**. Core `^10.3 || ^11`. Depends on `field_group`, `file`, `filter`.
Permission: `administer interactive_map`.

Right representation when a "map" is a **diagram with named areas** (electoral regions, floor plans,
sales territories) rather than something needing coordinates.

**Two cautions:** an SVG is an XML document that can carry scripts and external references — who
may upload one, and whether it is sanitised, is the question; and **an interactive map is only
accessible if the interaction is** — keyboard equivalents, accessible names, and a list alternative
for anyone who cannot use the map. That last is a content requirement, and the part most often
skipped.