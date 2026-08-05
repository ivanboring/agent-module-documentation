<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dynamic Layouts (dynamic_layouts) — agent index

Create Drupal **layouts through the admin UI** as `dynamic_layout` config entities. Depends on
core `layout_discovery` and `system`. Core requirement `^10 || ^11`.
Admin at `/admin/config/dynamic-layouts`, permission **`admin dynamic layouts`**.

Key facts:
- Layouts are **configuration entities**, so they export with `drush cex` / import with `cim` and
  stay in step across environments — the same deployment story as a code-declared layout, without
  the code.
- They become available anywhere Drupal offers layouts, **including Layout Builder sections**.
- **The trade-off to state:** a UI-created layout has no template file of its own, so anything
  beyond region arrangement (bespoke markup, wrapper classes, component integration) still needs
  theme work. And because creating one is cheap, a site can accumulate an uncurated catalogue —
  worth a governance rule.
- `gulpfile.js` + `package.json` indicate a front-end build for the module's own admin assets;
  the release ships the built files.
