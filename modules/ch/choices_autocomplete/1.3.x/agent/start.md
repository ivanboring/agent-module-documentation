<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Choices.js Autocomplete (choices_autocomplete) — agent index

Entity-reference widget built on **Choices.js** — searchable dropdown with removable tags.
Core-only dependencies. Core requirement `^9 || ^10 || ^11`.

Key facts:
- **Widget substitution only** — field type and stored data are unchanged, chosen per form
  display, free to switch back.
- Surface: `src/Plugin/` (widget), `choices_autocomplete.libraries.yml`, `public/js` +
  `public/css`, `config/schema`, `choices_autocomplete.api.php` (extension points).
- The improvement over core: core's autocomplete shows selections as **text in the input**
  (`Item A (12), Item B (7)`), so a multi-value field is edited as a string. Choices.js shows
  removable chips with a separate search field.
- **Check keyboard and screen-reader behaviour before rollout.** Replacing a native control moves
  accessibility responsibility to the library. Choices.js is well regarded, but verify with the
  assistive technology the site's editors actually use.
- Compare `many_selects` (wave 58), which solves the adjacent problem for `<select multiple>` on
  list fields rather than entity references.
