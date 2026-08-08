<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Animate bundles Animate.css and exposes its animations as options on the block configuration form, so a site builder can make a block fade or slide in without writing CSS.

---

Animate.css is a stylesheet of named keyframe animations — `fadeInUp`, `bounceIn`, `slideInLeft` and several dozen more. Using it in Drupal normally means adding the library, attaching it to the right pages, and then getting the class names onto the right markup, which for a block means a preprocess function or a template override.

This module does that plumbing. The animation is picked in the block's configuration UI at Structure > Block layout, stored with the block, and the class is applied when the block renders. `animate.min.css` ships with the module, so there is no external CDN request and no separate library download — worth noting, because the more common pattern in this space is a `libraries.yml` pointing at a CDN, which adds a third-party origin to every page.

Two practical caveats. The library is loaded wherever an animated block appears, so a single decorative animation costs every visitor on that page the stylesheet. And entrance animations that trigger on load rather than on scroll will have already finished by the time a visitor scrolls to a block below the fold — the module supplies the classes, not the intersection logic.

Accessibility deserves a thought: Animate.css respects `prefers-reduced-motion` in recent versions, but confirm that against the bundled copy before shipping motion to everyone.

---

- Animate a block on page load.
- Fade in a block.
- Slide a block in from a direction.
- Add motion without writing CSS.
- Pick an animation in the block UI.
- Avoid a preprocess hook for a class name.
- Serve Animate.css locally rather than from a CDN.
- Configure animation per block instance.
- Draw attention to a call-to-action block.
- Check the bundled copy honours prefers-reduced-motion.
- Weigh the stylesheet cost per page.
- Reconsider for blocks below the fold.
- Keep animation choices in block config.
- Export block animation settings with config.
- Standardise entrance animations across a site.
- Remove animations by editing the block.