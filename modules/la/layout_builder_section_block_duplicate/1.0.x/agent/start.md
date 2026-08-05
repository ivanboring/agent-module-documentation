<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Section-Block Clone (layout_builder_section_block_duplicate) — agent index

Adds **duplicate** actions for sections and blocks in Layout Builder. Depends on core
`layout_builder`. Version **1.0.1**. Core requirement `^10 || ^11`.

**The missing verb.** Layout Builder offers add, configure, move, remove. A page with six feature
cards is not built by configuring six blocks from scratch — it is built by making one and copying
it. Without duplication, every repetition is a full trip through the block form and the sixth card
differs from the first in some setting nobody notices. **It is a consistency feature as much as a
speed one** — the stronger argument.

**Two things to check on any Layout Builder extension:**
1. **Access should come from Layout Builder's own checks**, not a flat permission — who may edit a
   layout depends on the entity, its bundle, and whether the layout is a default or an override.
   `layout_paragraphs_toggle_publish` (wave 72) shows the correct pattern
   (`_layout_paragraphs_builder_access`).
2. **What the clone does with an inline block's content.** An inline block is content stored with
   the layout — duplicating must produce an **independent copy**, not a second reference to the
   same block, or editing one card silently changes the other five.
