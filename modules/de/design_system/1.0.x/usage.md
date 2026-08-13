<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Design System adds a link to the admin toolbar that opens your design system (styleguide / kitchen-sink page) — or any configured URL — embedded in an iframe inside the Drupal admin.

---

An administrator sets the target URL at `/admin/config/user-interface/settings` (route `design_system.settings`, permission `administer site configuration`). The embedded page is served at `/admin/design-system` by `DesignSystemController::displayDesignSystem`, gated by the module's own `access design system` permission, and shown as an `_admin_route`. A toolbar menu link (declared in `design_system.links.menu.yml`, module depends on core `toolbar`) provides quick access. This keeps a living design reference one click away for themers and content editors without leaving the site.

The URL is admin-configured (set only by holders of `administer site configuration`) and viewing is gated by a dedicated permission, so exposure is limited to trusted roles; the value is embedded as an iframe `src`. There are no mutating public endpoints, no external API calls from the server, and no user-supplied input beyond the admin setting.

---
- Enable the module (requires core `toolbar`).
- Set the design-system URL at `/admin/config/user-interface/settings`.
- Grant the `access design system` permission to the right roles.
- Open the design system from the admin toolbar link.
- View the embedded page at `/admin/design-system`.
- Point the iframe at an external styleguide (e.g. Storybook).
- Point it at an internal kitchen-sink / components page.
- Give themers quick in-site access to the design reference.
- Give editors a visual component catalogue while authoring.
- Restrict viewing to trusted roles via the dedicated permission.
- Change the target URL at any time from the settings form.
- Keep the design system reachable without leaving Drupal admin.
- Remove the toolbar link by disabling the module.
- Limit URL configuration to `administer site configuration` holders.
- Use it as a launcher for any single embedded admin page.
