<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Button Formatter (button_formatter) — agent index

Field formatter rendering **link and file fields** as styled buttons. Core-only dependencies.
Core requirement `^10 || ^11`. Settings at `/admin/config/button-formatter`.

Key facts:
- Single permission **`administer button formatter`**, `restrict access: true` — it defines the
  site's button style vocabulary, so it is a design-system control rather than a content one.
- Two-level model: styles are defined **once** on the settings form; the **per-field-display**
  formatter then picks from them. The choice therefore travels with the display config in
  `drush cex`, and applies anywhere that display is rendered (including Views fields rendered
  through their formatter).
- Surface: `src/Form/ButtonFormatterSettings.php`, `src/Plugin/` (the formatter),
  `templates/button-link.html.twig`, `config/install`, `config/schema`.
- Overriding the markup means overriding `button-link.html.twig` in the theme.
- `.info.yml` reports the legacy `version: '8.x-1.8'`.
