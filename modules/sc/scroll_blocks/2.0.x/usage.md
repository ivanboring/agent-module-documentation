<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Scroll blocks makes a block appear or disappear according to the page's scroll position, configured per block placement.

---

Several familiar interface patterns are really the same thing: a back-to-top button that only exists once you are far enough down, a sticky call-to-action that arrives after the hero has passed, a floating contact bar that appears part-way through a long article, a promotional banner held back until the visitor has shown some engagement. Each is usually written as a bespoke scroll listener in the theme, and each one accumulates.

This module makes it a property of the block. The module is JavaScript and configuration — no PHP classes at all — so it attaches behaviour to blocks placed the normal way, through block layout, with visibility conditions and region placement working as usual.

Two things worth deciding before using it. Scroll-driven appearance is motion, and visitors who have asked for reduced motion should not get elements sliding into view — check what the shipped CSS does about `prefers-reduced-motion` and adjust in the theme if needed. And an element that appears over content can cover it on small screens; test the layout at mobile widths with the block visible, not just at desktop.

---

- Show a back-to-top button after scrolling down.
- Reveal a sticky call to action past the hero.
- Hide a header element once scrolling starts.
- Show a floating contact bar mid-article.
- Delay a promotional banner until the visitor engages.
- Show a progress-related block on long pages.
- Hide a block once the footer is reached.
- Add scroll behaviour without writing a listener.
- Configure the trigger per block placement.
- Combine scroll behaviour with block visibility conditions.
- Replace accumulated bespoke scroll scripts in a theme.
- Show a newsletter prompt after part of an article.
- Keep scroll logic in configuration rather than the theme.
- Check reduced-motion behaviour before deploying.
- Test a floating block at mobile widths.