<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN Geo Widget (dkan_geo_widget) — agent index

**Leaflet + Geoman map widget for DKAN JSON-schema fields; saves drawn geometry as GeoJSON.**

- **Version:** 4.0.x · **Core:** ^10 || ^11 · **Depends on:** json_form_widget, dkan
- **Element:** `dkan_geo_widget` (`Element/DkanGeoWidget`, extends Textarea) themed with `geowidget_leaflet_wrapper`.
- **Wiring:** service decorators `geo_widget.json_form.widget_router` (decorates `json_form.widget_router`) and `geo_widget.group.json_form.widget_router` add `dkan_geo_widget => handleGeoWidgetElement`.
- **Enable:** set `"ui:options": {"widget": "dkan_geo_widget"}` on a property (e.g. `spatial`) in the UI schema.
- **Assets:** Leaflet/Geoman shipped in `dist/` via module libraries.
- **Security:** editorial widget only; no routes, permissions, or endpoints — geometry serialized client-side into the existing field.
