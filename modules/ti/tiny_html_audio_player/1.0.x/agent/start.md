<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# tiny-player HTML audio player (tiny_html_audio_player) — agent index

Compact custom audio player as a field formatter, built on **Howler** (`howlerjs`, wave 75).
Version **1.0.4**. Core requirement `^9.3 || ^10 || ^11`.

**Why replace `<audio>` at all:** the native element works, is accessible by default, and **looks
different in every browser** — fine for one file, unsatisfying where audio *is* the content (a
podcast, an oral-history archive, a language course, a music catalogue).

**Howler is the sensible engine** — it abstracts the Web Audio API with an HTML5 Audio fallback and
handles the browsers' quite different autoplay and codec behaviour.

**Three things to check with any custom player — replacing a native control means taking on what it
gave for free:**
1. **Keyboard operation** — play/pause on space, seek with arrows, a focusable control for each. A
   click-only player is unusable without a mouse.
2. **Screen-reader state** — the play button's **accessible name must change with state**, and
   progress needs announcing or at least exposing. Otherwise it is a set of unlabelled buttons.
3. **A transcript is not optional** — a WCAG requirement for prerecorded audio, and the only way the
   spoken content becomes **searchable**, which is usually what the site wanted from it.
