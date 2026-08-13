<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alerts Kit ships ready-made configuration for authoring and displaying dismissible alert banners on a site.

---

On install it imports an `alert` node type (with a `field_severity` taxonomy reference and body), an `alert_severity` taxonomy vocabulary carrying a `field_color` color field, and an `alerts` view that lists published alerts newest-first. `hook_install()` (`alerts.install`) seeds three severity terms — Emergency (#C70000), Warning (#E06C00), Notice (#018403). At render time `alerts_views_pre_render()` (`alerts.module`) loops the severity terms and injects a `<style>` block into the page head defining `.alert-severity-{tid}` background colors from each term's `field_color`, so banners are colored per severity.

The optional `alerts_olivero` submodule attaches a library (`alerts_olivero/olivero_display`) to the alerts view, adding banner styling and the JavaScript that records dismissed banner IDs in the browser's `localStorage` so a dismissed banner stays hidden across pages/visits. Editors create alerts as normal nodes (the `add_content_by_bundle` dependency provides a bundle-scoped add link); severity colors are managed by editing the taxonomy terms. There are no custom routes, permissions or services — access is governed by standard node/taxonomy permissions. Note the injected CSS is built from admin-managed `field_color` values (color_field validates hex), so it is not user-supplied markup.

---
- Install the kit to get an alert content type, severity vocabulary and listing view in one step.
- Create an alert by adding an `alert` node with a title, body and severity.
- Choose Emergency / Warning / Notice severity (or add your own terms).
- Add new severity levels by creating `alert_severity` taxonomy terms.
- Set each severity's banner background via its `field_color` color field.
- Display recent alerts through the provided `alerts` view.
- Place the alerts view block near the top of the site to show banners.
- Enable the `alerts_olivero` submodule on Olivero for banner styling + dismissal JS.
- Let visitors dismiss a banner and have it stay hidden via localStorage.
- Reorder severities by taxonomy term weight.
- Restyle banners in a custom theme by mirroring the Olivero submodule's CSS.
- Sort alerts chronologically (newest first) out of the box.
- Grant editors the node permissions for the `alert` bundle to author alerts.
- Use the color field to keep severity colors consistent site-wide.
- Uninstall the module if you prefer to hard-code banner colors in your theme.
- Translate alert nodes like any other content type.
- Add fields to the alert bundle (e.g. link) to extend banners.
- Embed the alerts view in a region via a Views block.
- Filter or theme the alerts view for a custom banner layout.
