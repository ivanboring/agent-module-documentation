<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Tabs And Accordion Layout (lb_tabs) — agent index

Two Layout Builder layouts: **tabs** and **accordion**. Depends on `jquery_ui_tabs` and
`jquery_ui_accordion`. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Layout plugins live in `layouts/tabs` and `layouts/accordion` (plus `src/Plugin/`,
  `config/schema`, `lb_tabs.libraries.yml`). No routes, permissions or configuration pages.
- **The jQuery UI dependencies are the thing to weigh.** `jquery_ui_tabs` and
  `jquery_ui_accordion` are contributed modules carrying components Drupal removed from core after
  Drupal 9. jQuery UI is in long-term maintenance, not active development.
- **Accessibility is inherited, not provided.** Tabs and accordions are patterns where keyboard
  operation, focus management and ARIA state decide whether they are usable. That behaviour comes
  from the jQuery UI components — test it rather than assuming, particularly with a screen reader.
  A modern alternative built on `<details>` or an ARIA-authoring-practices implementation may be
  preferable on a site with accessibility obligations.
- Purely a display arrangement — no effect on which blocks a user may see.
