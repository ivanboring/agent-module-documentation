<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Theme Change (theme_change) — agent index

Chooses **which theme renders which paths or routes**, as `theme_change` **configuration
entities** — so rules export with configuration, appear in a diff and are listable. Depends on core
`path_alias`. Admin at `/admin/config/system/theme_change`. Version **4.0.0**.
Core requirement `^10 || ^11`.

**What core gives you instead:** one lever — an admin theme applied to admin routes, optionally
extended to node edit forms. The alternative to this module is writing a **theme negotiator
service**, which is small but must then be maintained.

**Permissions are NOT `restrict access`:** `access theme change settings page`,
`access theme change edit page`, `access theme change delete page`. Weigh that — re-theming an
admin page is not privilege escalation in itself, but **a theme carries templates and
JavaScript**, so routing pages into a chosen theme is more consequential than it first sounds.

Two practical points:
- **The theme is part of the render cache key** — a rule change leaves stale rendered output until
  caches clear.
- Matching on **path alias** matches what the visitor typed: friendlier, and less precise than
  matching on route.
