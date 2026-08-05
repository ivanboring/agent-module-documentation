<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Toolbar Mediteran (admin_toolbar_mediteran) — agent index

CSS restyle of Admin Toolbar in the Mediteran look. Depends on `admin_toolbar`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **No PHP classes, no routes, no permissions, no config.** The module is
  `css/{toolbar,admin_toolbar,shortcut,user,coffee}/`, `images/icons/`,
  `admin_toolbar_mediteran.libraries.yml` and a `.module` that attaches the libraries.
- Scope is wider than the toolbar: the `shortcut`, `user` and `coffee` directories restyle those
  surfaces too, so installing Coffee later will pick up styling from this module.
- The very wide core range is credible for pure CSS but says nothing about *visual* correctness.
  Drupal's admin markup changed a lot across 8→11, and on a Drupal 11 site using the
  **Navigation** module rather than the classic toolbar the styling may target markup that is no
  longer rendered. Check visually rather than trusting the range.
- `.info.yml` reports the legacy `version: '8.x-1.18'`.
