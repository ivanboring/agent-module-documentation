<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alerts Kit (alerts) — agent index

**A configuration kit that installs an `alert` content type, an `alert_severity` taxonomy (color per severity), and an `alerts` view for dismissible site-alert banners.**

- **Version:** 1.1.x
- **Core:** ^9 || ^10 || ^11
- **Requires:** link, taxonomy, views, add_content_by_bundle, color_field
- **Install:** `alerts.install` seeds 3 severity terms (Emergency/Warning/Notice with colors).
- **Runtime:** `alerts_views_pre_render()` injects per-severity `<style>` background colors (from term `field_color`) into the page head for the `alerts` view.
- **Submodule:** `alerts_olivero` — attaches `olivero_display` library (banner styling + localStorage dismissal JS) to the alerts view.
- **Routes/permissions/services:** none custom; uses core node/taxonomy access.

**Security:** No custom routes or endpoints. The only dynamic output is a `<style>` block built from admin-managed `field_color` values (color_field enforces hex), rendered on the `alerts` view — not visitor-controlled. Content access is governed by standard node/taxonomy permissions.
