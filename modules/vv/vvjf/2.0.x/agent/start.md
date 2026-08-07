<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VVJF — Flip Cards (vvjf) — agent index

Views **style plugin** rendering results as accessible **3D flip cards**; vanilla JS.
Version **2.0.0**. Core **`^11.3 || ^12`**, PHP 8.3. Depends on `views`, `filter`, `vvj_core`.
Fifth VVJ format (`vvja`, `vvjb`, `vvjt`, `vvjc`).

Suits **short** second-half content — term/definition, question/answer, person/bio. Suits anything
longer badly: the back is a fixed space, and overflow either scrolls awkwardly or is cut.

**Flip-card accessibility is less standardised than tabs or accordions, so check rather than
assume:** keyboard-operable (hover-only fails touch *and* keyboard), back content reachable by
assistive technology when revealed and ideally not announced while hidden, and
`prefers-reduced-motion` switching the flip to a plain show/hide.