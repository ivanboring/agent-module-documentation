<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# WOW JS (wowjs) — agent index

Integrates **WOW.js** — triggers **Animate.css** animations as elements scroll into view. Requires
the **`animatecss`** module (which supplies Animate.css). Submodule `wowjs_ui` adds a configuration
interface. Version **1.1.1**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Two things belong in any conversation about scroll animation:**
1. **`prefers-reduced-motion`.** A substantial number of people get motion sickness, vertigo or
   migraine from moving content, and they express that through an **operating-system setting**. A
   site ignoring it causes real symptoms — this is a **defect to fix before launch**, not a
   stylistic preference. Confirm the media query is respected.
2. **Content that starts invisible.** Reveal animations typically set `opacity: 0` and rely on
   JavaScript to restore it — so a failed script load, an earlier JS error or an aggressive content
   blocker leaves the page **blank**. The safe pattern is visible by default, animated only once the
   script confirms it is running. Verify rather than assume.
