<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Tab Formatter (entity_ref_tab_formatter) — agent index

Renders a multi-value **entity reference field as tabs or an accordion**, including Paragraphs.
Version **11.3.0**. Core `^10 || ^11`. Selected in Manage display.

Panels are the referenced entities rendered through their **own view modes**, not markup extracted
from them.

**"Accessible" is the claim to verify** — these are the two patterns most often shipped as styled
divs with a click handler. Tabs: arrow keys between tabs, Tab into the panel, `aria-selected`, panel
associated with its tab. Accordion: headers as real **buttons**, `aria-expanded`, `aria-controls`,
keyboard-reachable content.

Editorial point for both: content past the first panel is seen by few visitors and weighted less by
search engines — the pattern suits **alternatives**, not fitting more on a page.