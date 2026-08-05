<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Animated Scroll To makes in-page anchor links glide rather than jump, and can scroll to an element automatically when a page loads with a fragment in the URL.

---

The two behaviours are deliberately separate, which is why the module ships two scripts: `animated-scroll-to-in-page.js` handles clicks on links pointing at an anchor within the current page, and `animated-scroll-to-on-page-load.js` handles arriving at a URL that already carries a `#fragment` — the case a click handler cannot cover, because no click happens. A settings form at `/admin/config/animate-scroll-to/settings` controls duration, offset and which elements are affected, behind the module's own permission `administer animated scroll to`. There are no dependencies beyond core, and the range is `^9 || ^10 || ^11`. One thing to check before deploying: CSS now offers `scroll-behavior: smooth` natively, which needs no JavaScript and — importantly — is automatically disabled by browsers when the visitor has asked for reduced motion. A JavaScript implementation must honour `prefers-reduced-motion` itself, so verify that before enabling it on a public site; scroll animation is one of the motion effects most likely to cause problems for people with vestibular disorders.

---

- Smooth-scroll to an anchor within a page.
- Scroll to a section when arriving with a URL fragment.
- Offset scrolling for a sticky header.
- Improve navigation on a long documentation page.
- Animate a table-of-contents jump.
- Scroll to a form's error summary.
- Configure scroll duration site-wide.
- Improve a one-page site's navigation.
- Scroll to a deep-linked comment.
- Give in-page links a polished feel.
- Handle fragment links from external sites.
- Reduce jarring jumps on long pages.
- Scroll to a FAQ answer.
- Restrict scroll settings to one permission.
- Match scroll behaviour across a site.
- Support a site still on Drupal 9.
- Scroll to a highlighted search result.
- Configure which selectors are animated.
