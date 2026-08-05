<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Animated Scroll To (animated_scroll_to) — agent index

Smooth scrolling for in-page anchors, plus scroll-on-load for URLs carrying a fragment.
No dependencies. Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/animate-scroll-to/settings`, permission
`administer animated scroll to`.

Key facts:
- **Two scripts for two distinct cases** — the reason both exist:
  - `js/animated-scroll-to-in-page.js` — clicks on same-page anchors;
  - `js/animated-scroll-to-on-page-load.js` — arriving at a URL that already has `#fragment`,
    where no click occurs and a click handler cannot help.
- **Check `prefers-reduced-motion` before deploying.** CSS `scroll-behavior: smooth` is honoured
  by browsers' reduced-motion setting automatically; a JavaScript implementation must do it
  itself. Scroll animation is among the effects most likely to affect people with vestibular
  disorders, so this is a real accessibility question, not a nicety.
- Consider whether CSS `scroll-behavior: smooth` plus `scroll-margin-top` for the sticky-header
  offset already covers the requirement — it needs no module.
- Surface: `src/Form/AnimatedScrollToForm.php`, the two JS files,
  `animated_scroll_to.libraries.yml`, `.module`. No entity types, no config schema directory.
