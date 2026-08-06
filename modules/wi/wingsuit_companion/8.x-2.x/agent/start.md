<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Wingsuit companion (wingsuit_companion) — agent index

Drupal side of the **Wingsuit** front-end toolkit: a **`ws-assets://` stream wrapper** exposing a
front-end build to Drupal, plus bridge submodules.
Configure at `/admin/wingsuit-companion/form/config`. Version **8.x-2.2**.
Core `^8 || ^9 || ^10 || ^11`.

Permission: `administer wingsuit configuration` — **`restrict access: true`**.

Submodules:

- **`wingsuit_ui_patterns`** — Twig extensions + `wingsuit.yml` UI Patterns extension. Heaviest
  dependencies: `ui_patterns (>=1.1)`, `ui_patterns_layouts`, `ui_patterns_settings (>=2.0)`,
  `ui_patterns_extends`, `components`. **Could not be enabled on the review install** — the last
  three were absent. Install them first.
- **`wingsuit_lb`** — Layout Builder support, via `layout_builder_browser (>=1.7)`.
- **`wingsuit_link`** — UI Patterns Settings link widget + `link_attributes`.
- **`wingsuit_page_manager`** — theme negotiator for Page Manager.

**Adoption is a workflow decision, not a module install.** It presumes a front-end project with
its own build and a team that wants component development outside Drupal. Without that the stream
wrapper points at nothing.