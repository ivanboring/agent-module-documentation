<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Design System (design_system) — agent index

**Admin-toolbar link that embeds an external design-system / kitchen-sink URL in an iframe at `/admin/design-system`.**

- **Version:** 1.0.x  **Core:** ^9.5 || ^10 || ^11  (php 8.0)
- **Depends:** toolbar
- **Config route:** `design_system.settings` → `/admin/config/user-interface/settings` (perm `administer site configuration`) — sets the target URL.
- **View route:** `design_system.design_system` → `/admin/design-system` (perm `access design system`, `_admin_route`), `DesignSystemController::displayDesignSystem`.
- **Toolbar link:** `design_system.links.menu.yml`.
- **Security:** URL set only by `administer site configuration`; viewing gated by dedicated `access design system` permission. Value used as iframe `src`. No mutating public endpoints, no server-side external calls, no untrusted input. Trivial module — start.md only.
