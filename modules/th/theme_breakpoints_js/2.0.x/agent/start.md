<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Theme Breakpoints for Javascript (theme_breakpoints_js) — agent index

Exposes a theme's declared **breakpoints** (`*.breakpoints.yml`) to JavaScript. Depends on core
`breakpoint`. Version **2.0.0**. **Core requirement `^11` — Drupal 11 only**, unusually narrow.

**The bug it removes:** breakpoints are defined once in the theme and invisible to JavaScript, so
the width is written into a script as a **magic number**. The design changes, the stylesheet's
breakpoint moves, the script's does not — and there is a band of viewport widths where the CSS says
mobile and the JS says desktop. Hard to find, because it only appears **between two widths nobody
tests at**.

**Two implementation notes:**
1. **Test with `window.matchMedia()` and the theme's own media query string**, not a
   `window.innerWidth` comparison. `matchMedia` respects the query's actual units — including
   **`em`-based** queries that move with the user's font size — and fires an event on change
   instead of needing a resize listener.
2. **The values must reach the page as data, not code** — `drupalSettings` is the intended channel
   — so a script need not be rebuilt when a breakpoint changes. That is the whole point.
