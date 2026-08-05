<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Font Icon Picker (font_iconpicker) — agent index

Icon-picker field driven by the site's **own custom icon font**, not a bundled set. Depends on
core `field`. Core requirement `^10.3 || ^11 || ^12` (already declares Drupal 12).
Settings at `/admin/config/user-interface/font-iconpicker`, gated by
`administer site configuration` — the module declares **no permission of its own**.

Key facts:
- Bring-your-own-font is the design: the picker is built from the font project you configure.
  A `composer.libraries.json` is supplied so the font can be installed as a `drupal-library`;
  the quality of labels and grouping in the picker depends on that font's manifest.
- Surface: `src/IconHelper.php` + `IconHelperInterface` (parsing), `src/Element/` (form
  element), `src/Plugin/` (field type, widget, formatter), `src/Form/SettingsForm.php`,
  `src/Hook/`, and `templates/font-icon.html.twig` for output.
- Contrast with `iconify_icons` (documented in this same wave), which fetches from the Iconify
  **API** and caches results — that one needs outbound HTTP, this one does not.
