<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Zodiac Style Plugin (zodiac_style_plugin) — agent index

Views **style plugin** using the Zodiac layout library, driven by core's **`breakpoint`** system.
Depends on core `breakpoint` and `views`. PHP >= 8.1.
Core requirement `^10.1 || ^11` in the info file (composer says `^10.3 || ^11` — **the info file is
what Drupal enforces**).

Key facts:
- **Responsive behaviour comes from the theme's declared breakpoints**, not from a column count —
  so a listing changes shape at the same widths as the rest of the site. That is the advantage
  over Views' own grid style.
- **The release ships a `node_modules/` directory** in the tarball. Unusual and worth flagging:
  unreviewed npm packages land in the web root, the deployed footprint inflates, and it should be
  excluded at deploy time.
- Surface: `src/Plugin/views/style/`, `config/schema`, `css/zodiac-style-plugin.css`,
  `zodiac_style_plugin.module`. No routes or permissions.
