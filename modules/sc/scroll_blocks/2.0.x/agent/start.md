<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Scroll blocks (scroll_blocks) — agent index

Shows/hides blocks by scroll position, configured per block placement.
Version **2.0.0-alpha7** (**alpha**). Core `^8 || ^9 || ^10 || ^11`. Depends on `block`.
**No PHP classes** — `scroll_blocks.module`, a library, CSS and JS.

Covers the usual family in one place: back-to-top, sticky CTA after the hero, floating contact
bar, delayed promo banner.

**Two checks before deploying.**

1. **Reduced motion.** Scroll-driven appearance is motion. Verify what the shipped CSS does with
   `prefers-reduced-motion` and override in the theme if it does nothing.
2. **Mobile overlap.** A floating block can cover content on small screens. Test at mobile widths
   with the block visible.

Note the alpha designation when recommending it.