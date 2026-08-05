<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Datalist (datalist) — agent index

Render element (and field widget) for HTML5 **`<datalist>`**. Core-only dependencies.
Core requirement `^9 || ^10 || ^11`. No routes, no permissions, no configuration.

Key facts:
- Surface: `src/Element/` (the render element), `src/Plugin/` (widget), `src/Cache/`,
  `src/DatalistSupportedHelper.php`, `templates/input--datalist.html.twig`.
- **Native element, so no JavaScript** — it inherits the browser's own accessibility and works
  with JS disabled. That is the main advantage over a scripted autocomplete.
- The trade-off: the suggestion dropdown is **not author-styleable** in any consistent way and
  filtering behaviour differs between browsers. Choose it where "works everywhere, looks native"
  beats pixel control.
- A `<datalist>` is a *suggestion*, not a constraint — the field still accepts any value. If the
  value must be one of the options, use a select or add validation; this element does not
  restrict input.
- `require-dev` lists `drupal/webform ^6`, so Webform integration is exercised in tests.
