<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Swiffy Slider integrates the Swiffy Slider library — a slider built on CSS scroll-snap rather than a JavaScript animation loop.

---

Most Drupal carousel modules wrap a jQuery plugin from a decade ago. Swiffy Slider is a different generation: it uses CSS scroll-snap for the movement, which means the browser does the animating, touch and trackpad gestures work natively, and the JavaScript is a fraction of the size — the project's pitch is "super fast and lightweight" and the architecture is why.

That has an accessibility consequence in its favour too: a scroll-snap slider is a scrolling container, so keyboard scrolling and screen reader traversal work by default rather than needing to be reimplemented. That is a better starting position than a JS-driven slider, though it still needs checking rather than assuming — visible focus on the controls and a pause control if anything auto-advances are still the module's responsibility.

**The general carousel objection still applies** and should be said whatever the implementation quality: content past the first slide is rarely seen, so a carousel suits equally-optional items — logos, testimonials, gallery images — and is the wrong place for anything that matters. A fast, accessible carousel showing the primary call to action on slide three is still showing it to almost nobody.

Worth choosing over a jQuery-based alternative on any site that has otherwise moved off jQuery, since that dependency is often the real cost of the older modules.

---

- Add a lightweight slider.
- Use CSS scroll-snap for movement.
- Get native touch and trackpad gestures.
- Avoid a jQuery carousel dependency.
- Reduce front-end payload.
- Benefit from default keyboard scrolling.
- Check visible focus on controls.
- Provide a pause control for auto-advance.
- Avoid placing the primary CTA past slide one.
- Show partner logos in rotation.
- Present testimonials.
- Advise against a carousel where it will not work.
- Replace an older slider module.
- Audit carousels for accessibility.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
