<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Accessibility menu (accessibility_menu) — agent index

Floating accessibility widget (text resizing, contrast, and similar). No dependencies.
Core requirement `^9.3 || ^10 || ^11`.
Settings at `/admin/config/development/accessibility-menu` (`administer site configuration`).

Key facts:
- Assets live in **`misc/`**, not the conventional `css/`+`js/`: `accessibility_menu.scss`
  (source), `accessibility_menu.css` + `.css.map`, `accessibility_menu_mobile.css`,
  `accessibility_menu.js`. Restyling means editing the SCSS and recompiling, or overriding the
  library.
- Drupal layer is `src/AccessibilityMenu.php`, `src/Plugin/` (block) and
  `src/Form/AccessibilityMenuSettingsForm.php`. No permissions of its own.
- `'interface translation project': accessibility_menu` in the info file — strings come from
  drupal.org's localisation server.
- **State the limitation when recommending it.** An overlay widget helps visitors who want larger
  text or more contrast and do not know their browser settings. It does **not** deliver WCAG
  conformance: semantic markup, keyboard operability, focus management and the design's own
  contrast are what is measured, and no overlay retrofits them. Some accessibility practitioners
  actively advise against overlays. Position it as a visitor convenience alongside real
  remediation, never as the remediation.
