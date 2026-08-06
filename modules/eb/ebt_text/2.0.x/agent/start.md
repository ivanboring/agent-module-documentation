<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT Text (ebt_text) — agent index

Ready-made **Text block type** with the EBT family's shared presentation settings (spacing,
background, container width). Requires `ebt_core`. Version **2.0.0**.
Core requirement `^10.1 || ^11 || ^12`.

**The simplest component in the family is the one worth having most** — a text block is placed more
often than every other component combined, and core's basic block gives a body field and **nothing
else**. The moment a design wants a coloured background, padding, or a narrower column, the answers
are a CSS class typed into a field, a per-project custom block type, or a template override — each
reinvented on the next site.

**EBT vs EPT — the distinction decides where the component can go:**
- **EBT block types** — placeable in a region, droppable into a **Layout Builder** section,
  referenceable from a field;
- **EPT paragraph types** — belong to **one page's field**.

**The family's standing trade:**
- pre-built is quick to adopt and **awkward to diverge from** — an uncovered design means template
  overrides, at which point a local block type is often cheaper;
- **it becomes a dependency of the content** — removing the module later leaves blocks with no type.
