<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Animate On Scroll (lb_aos) — agent index

Adds per-block **AOS** scroll-animation settings to Layout Builder. Depends on `aos` and core
`layout_builder`. Core requirement `^10 || ^11`.

Key facts:
- **Composer package is `drupal/aos-aos`, not `drupal/aos`** — the project/module naming differs
  on drupal.org. Expect that name in composer output and lockfiles.
- Whole module: `lb_aos.module`, `lb_aos.services.yml`, `src/EventSubscriber/`. It hooks Layout
  Builder's block build to add the settings and emit AOS data attributes; the library itself
  comes from `aos`.
- Settings live in **layout configuration**, so animation travels with the layout — including
  through a config export for default layouts, and with the entity for per-entity overrides.
- Two things to check when recommending it:
  - **`prefers-reduced-motion`** handling is the AOS library's responsibility, not this
    module's — verify it is honoured before shipping motion to a public site.
  - Content that only appears on scroll is absent until then. Do not animate anything a visitor
    needs immediately, and check behaviour with JavaScript disabled.
