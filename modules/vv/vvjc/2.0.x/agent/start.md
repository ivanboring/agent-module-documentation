<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VVJC — 3D Carousel (vvjc) — agent index

Views **style plugin** rendering results as an accessible **3D carousel**; vanilla JS, no library.
Version **2.0.0**. Core **`^11.3 || ^12`**, PHP 8.3. Depends on `views`, `filter`, `vvj_core`.
Fourth member of the VVJ family (`vvja` accordion, `vvjb` carousel, `vvjt` tabs).

**Two cautions specific to 3D:** the general carousel objection applies *more* — items rotated away
are de-emphasised on purpose, so this suits equally-optional items, not several important ones; and
**perspective transforms are motion**, so verify what the shipped CSS does with
`prefers-reduced-motion`.