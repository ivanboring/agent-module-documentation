<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dynamic Layouts lets layouts be **created through the admin UI** as configuration entities, instead of being declared in a theme's or module's `layouts.yml` and requiring a code deployment for every new arrangement.

---

Drupal's layout system is code-first: a layout is a plugin declared in YAML with a template beside it, which is right for a design system with a fixed set of arrangements and frustrating when a site builder needs a three-column variant on a Friday afternoon. This module adds the UI path — a `dynamic_layout` configuration entity managed at `/admin/config/dynamic-layouts`, where regions and settings are defined and the resulting layout becomes available anywhere Drupal offers layouts, including Layout Builder. Because the layouts are config entities they export with `drush cex` and deploy like anything else, which keeps environments in step. Dependencies are core `layout_discovery` and `system` only, with core `^10 || ^11`, and a single permission `admin dynamic layouts` gates the admin pages; `gulpfile.js` and `package.json` indicate a front-end build for the module's own assets. The trade-off is the familiar one for UI-created structure: a layout built in the UI has no template file to attach bespoke markup to, so anything beyond region arrangement still needs theme work — and a site that creates layouts freely can end up with a catalogue nobody curates.

---

- Create a layout without deploying code.
- Add a three-column variant from the UI.
- Give site builders control over arrangements.
- Export UI-created layouts with configuration.
- Use a custom layout in Layout Builder.
- Prototype a layout before coding it.
- Reduce developer round trips for arrangements.
- Define regions from an admin form.
- Keep layouts consistent across environments.
- Support a campaign needing a one-off layout.
- Build a grid layout visually.
- Add a layout for a specific landing page.
- Avoid a theme release for a layout change.
- Standardise layouts across a multisite.
- Let a site builder name and describe layouts.
- Deploy layouts through config import.
- Provide layouts to Layout Builder sections.
- Test a layout on staging before release.
