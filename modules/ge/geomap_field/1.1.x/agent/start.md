<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Geomap Field (geomap_field) — agent index

Field storing an **address plus geolocation**, with a map formatter.
Version **1.1.0**. Core `^8 || ^9 || ^10 || ^11`.
Depends on `field`, **`geolocation_provider`**, **`map_provider`**.

Solves the keep-in-step problem: address and coordinates in one field, so editing the address does
not leave the map pointing at the old place.

**The abstractions are the notable part** — geocoding service and map renderer are pluggable. Both
are areas where commercial terms change; hard-wiring one turns that into a migration.

**Two decisions when addresses are stored:** geocoding is a **third-party data transfer** (a
customer's home address sent to a US provider belongs in the privacy notice); and **display
precision is a choice** — an office is meant to be findable, an individual's home usually is not.