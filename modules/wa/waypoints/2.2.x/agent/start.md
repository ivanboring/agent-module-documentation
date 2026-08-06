<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Waypoints (waypoints) — agent index

Provides the **Waypoints** JavaScript library — fires a callback when an element reaches a scroll
position. No dependencies; it declares the library and does nothing until other code attaches it
(same shape as `howlerjs`, `vuejs`). Version **2.2.0**. Core requirement `^10 || ^11`.

**Pause before adopting it: the platform has replaced this.** **`IntersectionObserver`** is
supported everywhere that matters and does the same job better in the way that counts:
- **Waypoints listens to scroll events and measures positions** — running code on the **main thread
  on every scroll frame**;
- **`IntersectionObserver` is asynchronous and computed off the main thread**.

On a phone that is the difference between a page that scrolls smoothly and one that **stutters**.

**Two further points, whichever mechanism is used:**
1. **Scroll-triggered animation must respect `prefers-reduced-motion`** — content moving on its own
   causes real symptoms for a substantial number of people.
2. **Content revealed on scroll must exist without the script**, or a failed load leaves a **blank
   page**. Same trap as `wowjs` (wave 73); "visible by default, enhanced when the script runs" is the
   safe pattern.

Legitimate patterns: compact header after the hero, count-up statistics, sticky sidebar releasing at
the footer, scrollspy navigation, infinite-scroll trigger.
