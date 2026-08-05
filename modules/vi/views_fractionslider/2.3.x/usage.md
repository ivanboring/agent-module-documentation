<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FractionSlider integrates the FractionSlider jQuery plugin, with a `views_fs` submodule for driving a slider from a view.

---

FractionSlider's distinguishing feature is that individual elements within a slide animate independently — a heading arriving from one direction, an image from another, a caption fading in after both — which is the parallax-style presentation that was ubiquitous in the early 2010s and still turns up in design comps. The Views submodule is the more generally useful half: a slider whose slides come from a view inherits filtering, sorting, access checking and language handling rather than being a separate list someone maintains by hand, which is the difference between a slider that stays current and one that quietly shows last year's promotions. Version **2.3.0** on core `^10 || ^11`, depending on core `block`; the project is `views_fractionslider` and the module it ships is **`fractionslider`**, so `drush en views_fractionslider` fails. Two things to weigh. **It is jQuery-era**, and jQuery is no longer part of Drupal core's front-end stack — a slider built on it pulls a dependency the rest of the page has moved past, where `ept_carousel` and `ebt_carousel` in this same wave use vanilla-JavaScript Tiny Slider instead. And the standing carousel points apply with extra force here, because animated slides make them worse: **motion that starts on its own must respect `prefers-reduced-motion`**, since moving content causes real symptoms for a substantial number of people, and content past the first slide is largely unseen no matter how well it animates.

---

- Build an animated slider.
- Drive a slider from a view.
- Animate elements within a slide.
- Build a parallax-style banner.
- Show filtered content in a slider.
- Build a promotions rotation from content.
- Animate a heading and image separately.
- Show recent articles in a slider.
- Build a homepage banner from a view.
- Show events in a rotating panel.
- Keep slider content current automatically.
- Build a designed hero animation.
- Show featured products in a slider.
- Animate a call to action.
- Build a slider with access-checked content.
- Show a curated view as slides.
- Add motion to a landing page.
- Build a multilingual slider from a view.
