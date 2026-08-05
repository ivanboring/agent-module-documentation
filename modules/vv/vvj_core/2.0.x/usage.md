<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VVJ Core is the shared foundation for the VVJ family of Views display formats (accordion, carousel, hero, lightbox, parallax, slideshow, tabs and more) — an abstract base, shared services and a CSS/JS contract that every `drupal/vvj*` pattern module builds on.

---

Each VVJ pattern module supplies one Views display format: VVJA an accordion, VVJB a basic carousel, VVJC a 3D carousel, VVJF a 3D flip box, VVJH a hero, VVJL a lightbox, VVJP parallax, VVJR reveal, VVJS a slideshow, VVJT tabs. Rather than each reimplementing the same plumbing, they all depend on this module, which Composer installs automatically. It provides the abstract Views style base class the pattern modules extend, a JavaScript custom-element base the front-end widgets share, the CSS contract that keeps the patterns visually consistent, and a Twig extension exposing a `safe_html` filter to every VVJ template. It also ships a Drush include of its own. As the README says plainly, **it is not useful on its own** — enabling it without a pattern module adds nothing visible. It requires core `views` and `filter`, PHP 8.3, and targets recent core (`^11.3 || ^12`).

---

- Provide the shared base for a VVJ Views display format.
- Render a view as an accordion using VVJA.
- Render a view as a carousel using VVJB or VVJC.
- Build a hero banner from a view with VVJH.
- Display view results in a lightbox with VVJL.
- Add a parallax section driven by a view.
- Present view rows as tabs with VVJT.
- Keep VVJ patterns visually consistent through a shared CSS contract.
- Use the `safe_html` Twig filter in VVJ templates.
- Share JavaScript custom-element behaviour across patterns.
- Install one foundation instead of duplicating code per pattern.
- Upgrade all VVJ patterns by upgrading the shared base.
- Write a custom VVJ-compatible pattern module.
- Keep pattern modules small and focused.
- Ensure filter integration is available to every pattern.
- Manage VVJ modules through Composer without manual dependency wiring.
- Standardise markup across several view displays.
- Reuse the same slideshow behaviour in different views.
- Keep front-end assets in one place for the family.
- Reduce maintenance across ten sibling modules.
