<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Components Extras (components_extras) — agent index

Render element + theme-manager service on top of the **Components** module.
Composer: `drupal/components ^1.0|^2.0@beta|^3.0@beta`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **Developer-facing only** — the module's own description says so. No routes, no permissions,
  no config, nothing user-visible.
- Surface: `src/Element/` (the render element), `src/ComponentThemeManager.php` +
  `ComponentThemeManagerInterface`, `components_extras.services.yml`,
  `components_extras.components.yml` (its own Twig namespace), and
  `templates/components-extras.html.twig`.
- Purpose: Components gives you `@namespace/foo.html.twig` for Twig includes; this adds the
  render-array route to the same components, plus theme-aware resolution so a subtheme can
  override a component.
- **Watch the composer constraint**: `^1.0|^2.0@beta|^3.0@beta` accepts *beta* releases of the
  parent across two majors. A `composer update` can move `components` onto a beta branch — pin
  the parent explicitly if that matters.
