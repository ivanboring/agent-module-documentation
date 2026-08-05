<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FractionSlider (views_fractionslider) — agent index

Integrates the **FractionSlider** jQuery plugin. Submodule **`views_fs`** drives a slider from a
view. Depends on core `block`. Version **2.3.0**. Core requirement `^10 || ^11`.

**Name mismatch:** the project is `views_fractionslider`; the module it ships is **`fractionslider`**
— `drush en views_fractionslider` fails.

**The Views submodule is the more useful half.** Slides from a view inherit **filtering, sorting,
access checking and language handling** rather than being a hand-maintained list — the difference
between a slider that stays current and one quietly showing last year's promotions.

**FractionSlider's distinguishing feature** is that elements *within* a slide animate independently
(heading from one direction, image from another) — the parallax-style presentation of the early
2010s that still turns up in design comps.

**Two things to weigh:**
1. **It is jQuery-era**, and **jQuery is no longer part of core's front-end stack** — this pulls a
   dependency the rest of the page has moved past. `ept_carousel` / `ebt_carousel` (same wave) use
   vanilla-JS **Tiny Slider** instead.
2. **The carousel points apply with extra force here, because animation makes them worse.**
   **Motion that starts on its own must respect `prefers-reduced-motion`** — moving content causes
   real symptoms for a substantial number of people. And content past the first slide is largely
   unseen however well it animates.
