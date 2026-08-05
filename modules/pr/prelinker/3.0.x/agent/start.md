<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prelinker (prelinker) — agent index

`preload` / `preconnect` resource hints as configuration, delivered as **`Link:` response headers**
or `<link>` elements in the head. Preconnect targets are **configuration entities** — listable,
exportable, individually editable. Admin at `/admin/config/system/prelinker`.
Version **3.0.0**. **Core requirement `^11` — Drupal 11 only.**

**Routes are guarded by `_permission: 'administer'`** — not a permission any core module defines.
In practice only user 1 reaches these pages (uid 1 bypasses permission checks) unless some module
declares that exact name. Know this before reporting the pages as broken.

Key facts:
- **The `Link:` header option is the more interesting one.** A header can be acted on by an
  intermediary and, over HTTP/2 or 3, reaches the browser **before the HTML body** — earlier than a
  tag in the head.
- **Hints are a budget, not a bonus.** Every preconnect holds a connection open; every preload
  competes for bandwidth with the resources that decide when the page becomes usable. Four or five
  is the useful range; twenty is a regression.
- Related: `preload_font` (same wave) does the font-specific case with less configuration surface.
