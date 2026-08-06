<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Widget Menu (ckeditor_widget_menu) — agent index

Collects widget buttons into a **single toolbar dropdown**. Version **1.1.0**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why toolbars fill up:** core supplies formatting, lists, links, media and source; the site then
adds a code block, accordion, callout, embedded view, block embed, icon picker and table of
contents. The toolbar wraps to a second and third row — every button is harder to find, the editing
area shrinks, and on a narrow screen the toolbar takes more viewport than the text.

**The grouping also separates "things that format text" from "things that insert a component"** — a
distinction editors already hold.

**Two things to check, because a toolbar is an input surface before it is a decoration:**
1. **The dropdown must be keyboard operable** — in the tab order, opened with Enter/Space, navigated
   with arrows, closed with Escape, focus returned to the trigger. Otherwise an editor working by
   keyboard **loses every widget** behind a mouse-only menu.
2. **Group once and apply consistently.** A widget in the toolbar on one text format and inside the
   menu on another is a widget editors will report as **missing**.
