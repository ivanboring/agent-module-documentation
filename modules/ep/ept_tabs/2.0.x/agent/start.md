<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Tabs (ept_tabs) — agent index

Ready-made **Tabs paragraph type**. Requires `ept_core`, `paragraphs`, core `views`, plus
**`block_field`** and **`viewsreference`** — so **a tab can hold an embedded view or a placed
block**, not only text. That is what makes it a page-composition tool rather than a text accordion.
Version **2.0.1**. Core requirement `^10.1 || ^11 || ^12`.

**The dependency to weigh: `jquery_ui_tabs`.** jQuery UI was **removed from Drupal core**; the
remaining pieces live in contrib maintained on a best-effort basis. A component built on it is
built on a library the project is moving away from.

Accessibility — same checklist as every tab set: `role="tablist"`/`"tab"`/`"tabpanel"`,
`aria-selected`, **arrow-key** movement, only the active panel exposed. Counterweight to the
deprecation: jQuery UI's tabs implementation is one of the better ones here.

**Inactive panels are rendered and in the DOM** — they cost query time, and **an embedded view in a
tab nobody opens is still executed**. That matters more here than in a text-only tab component.
