<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Animate On Scroll adds per-block scroll animation settings to Layout Builder, so a site builder can make a section fade or slide in as the visitor scrolls without writing any JavaScript.

---

The AOS (Animate On Scroll) library does the animation; Layout Builder decides what is on the page. This module joins them: an event subscriber in `src/EventSubscriber` hooks into Layout Builder's block build so each block gains animation settings, and the resulting AOS data attributes are attached to the block's markup for the library to act on. It is deliberately small — a `.module`, a services file and one subscriber — with dependencies on `aos` (which supplies the library integration) and core `layout_builder`, and core `^10 || ^11`. Note the composer package name is `drupal/aos-aos` rather than `drupal/aos`, which is the pattern drupal.org uses when a project's module name is namespaced differently from the project; it is worth knowing when reading composer output. Two caveats apply to any scroll-animation approach: animation should respect `prefers-reduced-motion`, which is the AOS library's responsibility rather than this module's and is worth verifying; and content that only appears on scroll is content that is absent until then, so it should not carry information a visitor needs immediately.

---

- Fade a Layout Builder block in on scroll.
- Slide a section into view as the visitor scrolls.
- Add motion to a landing page without JavaScript.
- Set animation per block rather than per theme.
- Give a marketing page visual polish.
- Configure animation from the Layout Builder UI.
- Stagger animations down a long page.
- Animate a call-to-action into view.
- Reuse AOS settings across layouts.
- Let site builders control motion.
- Add subtle transitions to a corporate site.
- Animate an image gallery section.
- Match motion to a design system.
- Apply animation to a custom block type.
- Avoid a bespoke scroll-observer implementation.
- Keep animation settings in layout configuration.
- Emphasise a testimonial as it appears.
- Prototype motion before committing to theme code.
