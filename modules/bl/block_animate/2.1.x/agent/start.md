<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Animate (block_animate) — agent index

Adds **Animate.css** animation options to the block configuration form.
Version **2.1.1**. Core `^8.8 || ^9 || ^10 || ^11`. Depends on core `block`.
Configure per block at **Structure > Block layout**. No routes, permissions or settings page.

`animate.min.css` is **bundled**, not loaded from a CDN — no third-party origin added to the page.

Three caveats worth stating:
- The stylesheet loads on every page containing an animated block.
- Entrance animations fire on **load**, not on scroll — a block below the fold will have finished
  animating before it is seen. The module supplies classes, not intersection logic.
- Confirm the bundled Animate.css honours `prefers-reduced-motion` before shipping motion.