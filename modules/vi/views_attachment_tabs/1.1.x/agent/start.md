<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Attachments as Tabs (views_attachment_tabs) — agent index

Renders a view's **attachment displays as tabs** on the parent display. Depends on core `views`.
Submodules: `views_attachment_tabs_bootstrap`, `views_attachment_tabs_olivero` — theme-matched
markup. Version **1.1.2**. Core requirement `^9 || ^10 || ^11`.

Key facts:
- **What it saves:** doing this by hand is a preprocess function, a template and JavaScript per
  site. Here it is a display setting.
- **Accessibility is the thing to verify** — true of every tab implementation. A correct tab set
  needs `role="tablist"` / `role="tab"` / `role="tabpanel"`, `aria-selected`, **arrow-key
  navigation** between tabs, and only the active panel exposed. Markup that merely *looks* like
  tabs is a set of links to hidden divs and reads badly in a screen reader.
- **Inactive tabs are still rendered.** Their content is in the DOM — it costs query time, and it
  is findable by browser in-page search. Not lazy-loaded.
