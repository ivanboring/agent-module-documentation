<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Section-Block Clone adds duplicate actions for sections and blocks inside Layout Builder.

---

Layout Builder's controls are add, configure, move and remove, and the verb missing from that list is the one editors use most when building a real page. A page with six feature cards is not built by configuring six blocks from scratch; it is built by making one and copying it five times, changing the text each time. Without a duplicate action every repetition is a full trip through the block form — choose the type, fill every field, set every style option — and the sixth card differs from the first in some setting nobody notices. Cloning is therefore both a speed feature and a consistency one, which is the stronger argument for it. Version **1.0.1** on core `^10 || ^11`, depending on core `layout_builder`. Two things to check on any Layout Builder extension. **Access must come from Layout Builder's own checks** rather than a flat permission, because who may edit a layout depends on the entity, its bundle and whether the layout is a default or an override — `layout_paragraphs_toggle_publish` in wave 72 does this correctly by using the parent module's access requirement, and that is the pattern to look for. And **what a clone does with the block's content matters**: an inline block is content stored with the layout, so duplicating it should produce an independent copy rather than a second reference to the same block, or editing one card will silently change the other five.

---

- Duplicate a block in Layout Builder.
- Copy a section with its blocks.
- Build six identical cards quickly.
- Reuse a configured block's settings.
- Speed up landing page building.
- Keep repeated components consistent.
- Copy a section between regions.
- Avoid reconfiguring a complex block.
- Duplicate a styled section.
- Build a repeated feature row.
- Reduce clicks when building a page.
- Copy a block's style settings.
- Reproduce a layout pattern.
- Build a comparison grid.
- Duplicate a section for a variant.
- Reduce configuration mistakes.
- Copy a testimonial block.
- Speed up a marketing page build.
