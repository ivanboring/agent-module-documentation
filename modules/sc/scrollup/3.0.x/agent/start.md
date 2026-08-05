<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Scrollup (scrollup) — agent index

Floating "back to top" button. No dependencies. **Core requirement `^10.3 || ^11.0`** — narrow,
excluding earlier Drupal 10 minors.
Settings at `/admin/config/system/scrollup` (`administer site configuration`).

Key facts:
- **Three accessibility points to verify, not aesthetics:**
  1. **Keyboard reachable and focusable** — a pointer-only control excludes the users who most
     benefit from not scrolling.
  2. **Accessible name** — an icon-only button announces nothing useful to a screen reader.
  3. **Respect `prefers-reduced-motion`** — an animated jump to the top is exactly the motion that
     affects people with vestibular disorders. Same point as `animated_scroll_to` (wave 61).
- Surface: `src/Form/ScrollupForm.php`, `config/install`, `config/schema`, libraries. No routes
  beyond the settings form, no permissions of its own.
- Consider whether CSS `scroll-behavior: smooth` plus a plain anchor covers the requirement — it
  needs no module and honours reduced-motion automatically.
