<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Charts Highcharts Maps extends the Charts module with **Highcharts Maps**, so data can be rendered as a choropleth — a map coloured by value — rather than as a bar or line chart.

---

The Charts module provides a common abstraction over several charting libraries, and this adds the map dimension for Highcharts specifically. The interesting part is where the geography comes from: a controller at `/charts-highmap/map-data/{json_field_name}/{taxonomy_term}` serves the map data, taking a field name and a taxonomy term as route parameters and gated by a **`_custom_access`** callback (`MapDataController::checkAccess`) rather than a flat permission — the right pattern, since access to map data should depend on the term and field being requested rather than on a site-wide grant. Anyone reviewing a customisation of this module should keep that callback intact, since it is the only thing standing between the endpoint and arbitrary field reads. The dependency is `charts`, with a wide core range of `^8.8 || ^9 || ^10 || ^11`. The commercial point matters as much as the technical one: **Highcharts is not free for commercial use** — it is free for personal and non-profit projects and requires a paid licence otherwise, and Highcharts Maps is licensed separately from Highcharts itself. Establish the licence position before proposing it; the Charts module supports other libraries with different terms.

---

- Show data as a coloured map.
- Build a choropleth from Drupal content.
- Visualise regional statistics.
- Map values by taxonomy term.
- Show election or census data.
- Render a country map by value.
- Serve map data from a Drupal endpoint.
- Combine maps with other Charts output.
- Visualise sales by region.
- Show coverage across areas.
- Build a public-health dashboard.
- Map survey responses by area.
- Show membership distribution.
- Render a map in a Views display.
- Visualise a geographic dataset.
- Show density across regions.
- Present regional performance data.
- Add maps to an existing Charts setup.
