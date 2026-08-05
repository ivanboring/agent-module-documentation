<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Accessibility menu adds the floating accessibility toolbar seen on many public-sector sites — a widget offering text resizing, contrast adjustment and similar visual accommodations.

---

The module is front-end work with a thin Drupal layer: `misc/` holds the SCSS source alongside compiled CSS (desktop and mobile) and a source map, plus `accessibility_menu.js`; `src/AccessibilityMenu.php` and `src/Plugin` provide the Drupal integration and block; and a settings form at `/admin/config/development/accessibility-menu` under `administer site configuration` chooses what the widget offers. The info file declares an `interface translation project`, so the UI strings are translatable through drupal.org's localisation server. There are no dependencies beyond core, and the range is `^9.3 || ^10 || ^11`. It is worth being clear about what a widget like this does and does not achieve: it can genuinely help visitors who need larger text or higher contrast and do not know their browser or OS settings, and public-sector procurement often asks for one. It does **not** make an inaccessible site accessible — semantic markup, keyboard operability, focus management and colour contrast in the design itself are what WCAG measures, and an overlay cannot retrofit them. Treat it as a convenience for visitors, not as a compliance measure.

---

- Offer visitors a text-resize control.
- Provide a high-contrast toggle.
- Add an accessibility widget to a public site.
- Help visitors who cannot change browser settings.
- Meet a procurement requirement for an accessibility tool.
- Place the widget as a block.
- Configure which accommodations are offered.
- Style the widget for mobile separately.
- Translate the widget's labels.
- Give a council site a familiar accessibility control.
- Offer grayscale or inverted display.
- Reset visual adjustments to defaults.
- Support visitors with low vision.
- Add a visible accessibility affordance.
- Complement real accessibility work.
- Provide a keyboard-reachable control.
- Match the widget to a site's branding.
- Support a site still on Drupal 9.3.
