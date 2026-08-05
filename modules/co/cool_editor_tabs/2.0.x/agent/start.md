<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cool Editor Tabs (cool_editor_tabs) — agent index

Restyles Drupal's **local task tabs** (View / Edit / Revisions / Delete). Version **2.0.0**.
**Core requirement `^11.1` — notably tight**, pinned near a single minor.

`use cool editor tabs` is explicitly declared **`restrict access: false`** — a deliberate statement
rather than an omission: the module changes **presentation** for whoever holds it and grants no
capability.

**Why it is worth more than it looks:** local tasks are the row an editor uses more than anything
else. On a site with moderation, translation, layout and devel enabled a node can carry **eight
tabs**, and finding "Edit" among them costs a moment every time — paid back on every content
operation.

**Two things to check with any tab-restyling module, because this is where cosmetic changes cause
real problems:**
1. **Local tasks are navigation and must stay keyboard-reachable** — visible focus indicator,
   sensible tab order. A restyle that removes the focus outline is an accessibility regression
   nobody notices until someone tries the site without a mouse.
2. **The active tab must be distinguishable by more than colour** — colour alone fails colour-blind
   users and the WCAG requirement that information is not conveyed by colour alone.
