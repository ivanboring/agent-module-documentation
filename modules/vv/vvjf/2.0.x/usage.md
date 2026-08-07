<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VVJF renders Views results as flip cards — a front face that turns to reveal a back — built on vanilla JavaScript.

---

The fifth member of the VVJ family, after the accordion, basic carousel, tabs and 3D carousel, sharing `vvj_core`'s foundation and its approach: no jQuery, no third-party plugin, accessibility as the requirement rather than an afterthought.

Flip cards suit a specific shape of content — a question and its answer, a term and its definition, a person and their biography — where the second half is short and the reveal is part of the point. They suit anything longer badly, because the back of a card is a fixed space and text that overflows it either scrolls awkwardly or is cut.

**The accessibility questions for a flip card are less standardised than for tabs or an accordion, which makes them worth checking rather than assuming.** The card must be operable by keyboard, not only by hover — hover-only reveals are unusable on touch as well as by keyboard. The back content must be reachable by assistive technology when revealed and, ideally, not announced while hidden. And if the flip is animated, `prefers-reduced-motion` should switch it to a simple show/hide, because a rotating card is exactly the sort of motion that causes problems.

Core requirement `^11.3 || ^12` with PHP 8.3, like the rest of the family.

---

- Show a term and its definition.
- Reveal an answer on a card.
- Present a person and their biography.
- Build a flip-card grid from a View.
- Avoid a jQuery card plugin.
- Keep Views filters and access in play.
- Make cards keyboard-operable.
- Avoid hover-only reveals.
- Support touch devices.
- Reach back content with assistive technology.
- Avoid announcing hidden content.
- Respect prefers-reduced-motion.
- Keep back-face content short.
- Share the VVJ foundation.
- Plan a Drupal 11.3+ front-end stack.
