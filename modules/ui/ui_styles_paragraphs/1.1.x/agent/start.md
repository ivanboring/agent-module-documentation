<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# UI Styles Paragraphs (ui_styles_paragraphs) — agent index

Bridge letting **UI Styles** options apply to **Paragraphs**. Composer: `drupal/ui_styles ^1.6`,
`drupal/paragraphs ^1.0`. Core requirement `^9 || ^10 || ^11`.
**Release is 1.1.0-alpha2 — alpha.**

Key facts:
- Whole module: `src/Plugin/` plus info/composer/licence. No routes, permissions or config —
  it is a connector, nothing more.
- Styles themselves are declared by the **theme** in UI Styles' YAML. This module contributes no
  styles; if the picker is empty, the theme has declared none.
- The design advantage over "add a CSS class" modules: editors choose from a closed list the
  theme guarantees exists, so a typo cannot silently produce a class that does nothing.
- Configure per paragraph type through the UI Styles integration once enabled; the chosen styles
  are stored with the paragraph.
