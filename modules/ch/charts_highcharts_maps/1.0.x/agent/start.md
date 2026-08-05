<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Charts Highcharts Maps (charts_highcharts_maps) — agent index

Adds **Highcharts Maps** to the Charts module. Depends on `charts`.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

Key facts:
- **Licensing is the first question, not the last.** Highcharts is **not free for commercial
  use** — free for personal/non-profit, paid licence otherwise — and **Highcharts Maps is licensed
  separately** from Highcharts. Establish the position before proposing it; the Charts module
  supports other libraries with different terms.
- Map data endpoint: `/charts-highmap/map-data/{json_field_name}/{taxonomy_term}`, gated by
  **`_custom_access`** (`MapDataController::checkAccess`) rather than a flat permission — correct,
  since access should depend on the field and term being requested. **Keep that callback intact
  in any customisation**: it is the only thing between the endpoint and arbitrary field reads.
- Surface: `src/Controller/MapDataController.php`, `src/Plugin/`,
  `charts_highcharts_maps.libraries.yml`, `config/schema`.
- The Highcharts Maps library is not bundled — install it and check the status report.
