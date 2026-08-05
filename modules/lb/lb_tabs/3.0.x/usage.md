<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Tabs And Accordion Layout supplies two Drupal layouts — a tabbed one and an accordion — so a Layout Builder section can present its blocks as tabs or collapsible panels rather than stacked in a column.

---

Layout Builder arranges blocks into regions, and the layouts core ships are all spatial: one column, two columns, three. Tabs and accordions are *interactive* arrangements — the same regions, revealed one at a time — and they are among the most requested editorial patterns, particularly for FAQ pages, specification sheets and long policy content. This module provides both as layout plugins in `layouts/tabs` and `layouts/accordion`, with `src/Plugin` and `config/schema` supporting their settings. The dependencies are the notable part: `jquery_ui_tabs` and `jquery_ui_accordion`, both contributed modules that carry the jQuery UI components Drupal removed from core after Drupal 9. That is worth knowing for two reasons — jQuery UI is in long-term maintenance rather than active development, and these layouts inherit whatever accessibility behaviour those components provide, which matters because tabs and accordions are patterns where keyboard operation and ARIA state are the difference between usable and not. Core requirement is `^9 || ^10 || ^11`.

---

- Present a Layout Builder section as tabs.
- Build an FAQ page with accordions.
- Show specification data in tabbed panels.
- Reduce page length on long content.
- Let editors group blocks into tabs.
- Show related sections one at a time.
- Build a product detail page with tabs.
- Collapse policy sections into an accordion.
- Give editors an interactive layout choice.
- Arrange blocks without custom templates.
- Show course modules as collapsible panels.
- Improve scanability of dense content.
- Use tabs inside a landing page section.
- Add an accordion without custom JavaScript.
- Group service information by topic.
- Present terms and conditions in sections.
- Reduce scrolling on mobile.
- Configure tab labels from the layout settings.
