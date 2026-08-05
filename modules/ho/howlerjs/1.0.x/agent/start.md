<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Howler.js (howlerjs) — agent index

Provides the **Howler** audio library as a Drupal asset library. No dependencies, no routes, no
permissions, no configuration — it declares the library and does nothing until other code attaches
it. Same shape as `vuejs` (wave 70) and `sweetalert2` (wave 60). Version **1.0.2**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**What `<audio>` cannot do, and Howler can:** layered or crossfaded sounds, **audio sprites** (one
file holding many short clips addressed by offset), playback-rate control, spatial positioning, and
consistent behaviour across browsers' quite different autoplay policies and codec support. Its
notable characteristic is falling back from **Web Audio API to HTML5 Audio automatically**.

**Two points to raise whenever audio comes up:**
1. **Autoplay is blocked by every current browser** without a user gesture — a deliberate
   protection, not a bug to work around. Audio starting on page load is among the most disliked
   things a site can do, and it is a **WCAG failure** unless it can be stopped within three seconds.
2. **Audio content needs a text alternative** exactly as video does. A site publishing spoken
   material owes a **transcript**, however sophisticated the player.
