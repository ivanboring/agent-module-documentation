<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Vanilla Javascript Accordion - VVJA — agent index

Views **style plugin** rendering results as an accessible accordion; vanilla JS, no library.
Version **2.0.0**. Core **`^11.3 || ^12`**, **PHP 8.3** — no Drupal 10 path.
Depends on `views`, `filter`, **`vvj_core`** (shared foundation, installed with any VVJ module).
No routes, permissions or config of its own.

Selling point over jQuery-based alternatives: no third-party library to keep patched, and
accessibility (keyboard operation, ARIA roles and state, focus management) treated as the
requirement rather than an add-on.

Being a Views style plugin, filters, sorts, contextual arguments, pagers, caching and access all
behave normally — the accordion is the rendering layer only.