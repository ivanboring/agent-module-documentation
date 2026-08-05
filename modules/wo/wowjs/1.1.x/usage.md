<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
WOW JS integrates the WOW.js library, which triggers Animate.css animations as elements scroll into view.

---

Scroll-reveal is a design convention: content fades or slides in as it enters the viewport, which gives a page rhythm and signals that there is more below. WOW.js is the long-standing library for it, pairing with **Animate.css** to supply the animations themselves — hence the dependency on the `animatecss` module, which provides that library. A `wowjs_ui` submodule adds a configuration interface. Version **1.1.1** on `^8.8` through `^11`. Two things belong in any conversation about scroll animation. **`prefers-reduced-motion`** is the important one: a substantial number of people experience motion sickness, vertigo or migraine from moving content, they express that through an operating-system setting, and a site that ignores it causes real symptoms rather than a stylistic disagreement — so confirm the media query is respected, and if it is not, that is a defect to fix before launch rather than a preference. **Content that starts invisible** is the other: reveal animations typically set opacity to zero and rely on JavaScript to restore it, so a script that fails to load, an error earlier on the page or an aggressive content blocker leaves the page blank. A progressive approach — visible by default, animated only when the script has confirmed it is running — avoids that, and is worth verifying rather than assuming.

---

- Fade content in on scroll.
- Add scroll-reveal animations.
- Animate sections as they enter view.
- Give a long page rhythm.
- Highlight a call to action on scroll.
- Animate cards into place.
- Add motion to a landing page.
- Reveal statistics as they appear.
- Animate a feature list.
- Add polish to a marketing page.
- Stagger animations down a page.
- Signal more content below.
- Animate an image gallery's entry.
- Add subtle motion to a homepage.
- Support a design's animation spec.
- Configure animations without code.
- Animate testimonials into view.
- Add entrance effects to a section.
