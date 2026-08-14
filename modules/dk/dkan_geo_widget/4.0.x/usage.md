<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN Geo Widget provides a map-based editor for spatial properties in DKAN's JSON-schema forms.

---

It registers a `dkan_geo_widget` form element (a Leaflet + Geoman map wrapped around a textarea) and decorates the JSON Form Widget router (and the DKAN group widget router) so a schema property flagged with `"widget": "dkan_geo_widget"` in a `.ui.json` file renders the map instead of a plain textarea. Editors draw markers and shapes on the map and the geometry is stored as GeoJSON in the underlying field — restoring the map-drawing experience DKAN D7 had via Leaflet Widget. The map assets (Leaflet/Geoman) ship in the module's `dist/` and are declared in its libraries.

It is an editorial widget only: no routes, permissions, or server endpoints — it swaps a widget and serializes drawn geometry client-side into the existing field. Setup: enable the module, then set `ui:options.widget` to `dkan_geo_widget` on the desired property (e.g. `spatial`) in your dataset UI schema.

---
- Draw a dataset's spatial extent on an interactive map.
- Place point markers for a location property.
- Draw polygons/rectangles to define a region.
- Save drawn geometry as GeoJSON in the schema field.
- Replace a plain textarea with a map for `spatial`.
- Configure the widget via `dataset.ui.json` `ui:options`.
- Restore DKAN D7 Leaflet-widget-style editing on D10/D11.
- Edit geometry within DKAN group forms too (group router decorator).
- Give data authors a visual alternative to hand-writing GeoJSON.
- Add a relevant-location field to datasets.
- Adjust an existing shape by editing it on the map.
- Use Geoman controls for drawing/editing.
- Provide a title/description for the map widget via UI options.
- Bundle Leaflet assets locally (no external CDN needed).
- Capture multiple shapes for one property.
- Standardize spatial capture across datasets.
- Pair with json_form_widget-driven DKAN forms.
- Theme the map wrapper via `geowidget_leaflet_wrapper`.
