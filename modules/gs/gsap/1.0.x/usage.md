<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GSAP integrates the GreenSock animation platform into Drupal and, unusually for a library-integration module, lets animations be configured as content: each animation is a config entity created through the admin UI rather than written into a theme's JavaScript.

---

`gsap.libraries.yml` declares 23 libraries — the GSAP core plus each plugin the platform offers (ScrollTrigger, Flip, Draggable, MotionPath, MorphSVG, SplitText, DrawSVG, ScrambleText, Inertia, Physics2D, the custom easing set and more) — so a theme can attach exactly the plugins it needs. The Drupal-side model is a `gsap` config entity with a full CRUD interface: a collection at `/admin/structure/gsap`, add/edit/delete forms, and a settings form at `/admin/config/content/gsap`, all gated by the single `administer gsap` permission. `js/animations.js` reads those entities via `drupalSettings` and applies them, with `gsap/gsap` and `gsap/scrolltrigger` as its declared dependencies — scroll-triggered animation is the assumed default use. One detail deserves attention before deployment: **every library entry loads from `https://cdn.jsdelivr.net/npm/gsap@3.13.0/…`**, an external CDN, not a local file. A `composer.libraries.json` is supplied that installs `greensock/gsap 3.13.0` locally as a `drupal-library`, but the shipped `libraries.yml` does not point at it. Sites with a strict Content-Security-Policy, an offline requirement, or a policy against third-party asset delivery must override the library definitions.

---

- Add scroll-triggered animation to a Drupal site.
- Configure animations through the admin UI instead of code.
- Attach only the GSAP plugins a page actually needs.
- Animate elements as they enter the viewport.
- Give a marketing site motion without a custom build step.
- Let a site builder create animations without JavaScript.
- Reuse an animation definition across several pages.
- Morph SVG shapes on interaction.
- Split text for per-character animation.
- Make an element draggable.
- Animate along a motion path.
- Apply custom easing curves.
- Manage animations as exportable configuration.
- Restrict animation authoring to one permission.
- Serve GSAP from a local library instead of a CDN.
- Add parallax effects to a landing page.
- Debug animations with GSDevTools.
- Coordinate multiple animations on one timeline.
- Animate a PixiJS canvas from Drupal.
- Adopt GSAP without committing to a decoupled front end.
