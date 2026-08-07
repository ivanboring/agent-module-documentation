<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Swiffy Slider (swiffy_slider) — agent index

Integrates **Swiffy Slider** — movement by **CSS scroll-snap** rather than a JavaScript animation
loop. Version **1.4.0**. Core `^10 || ^11`. No dependencies.

Different generation from the jQuery-plugin wrappers: the browser animates, touch and trackpad
gestures work natively, and the JS is a fraction of the size.

**Accessibility starts better** — a scroll-snap slider is a scrolling container, so keyboard
scrolling and screen reader traversal work by default. Still check visible focus on controls and a
pause control if it auto-advances.

**The general objection still applies whatever the implementation quality:** content past slide one
is rarely seen. A fast, accessible carousel showing the primary CTA on slide three is still showing
it to almost nobody.