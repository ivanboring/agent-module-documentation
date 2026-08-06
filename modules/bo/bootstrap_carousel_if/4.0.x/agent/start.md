<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bootstrap Carousel Image Formatter (bootstrap_carousel_if) — agent index

Field formatter rendering a **multi-value image field as a Bootstrap carousel**.
Version **4.0.2**. Core `^9 || ^10 || ^11`. No dependencies. Selected in Manage display.

**Check the theme actually ships Bootstrap's carousel JavaScript** — the formatter emits markup
only. With CSS but no JS the carousel looks right and does not move; that is the first thing to
test.

Usual carousel caveats (keyboard, visible focus, pause control, items past the first rarely seen)
apply — but they are **much weaker for a product gallery**, where images are alternatives rather
than a sequence to be read. That is the case this fits best.