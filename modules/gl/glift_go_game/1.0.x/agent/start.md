<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Glift Go Game (glift_go_game) — agent index
**A text-format filter rendering `[glift]...[/glift]` SGF Go records with the bundled Glift JS library.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10
- **Filter:** `filter_glift` in `src/Plugin/Filter/FilterGliftGoGame.php` (TYPE_TRANSFORM_IRREVERSIBLE).
- **Library:** `glift_go_game/glift` → `js/glift_1_1_2.min.js`.
- **Args:** single = raw SGF or URL; multiple `key=value` (`sgf`, `divId`, `theme`, `disableZoomForMobile`, `drawBoardCoords`).
- **Routes/permissions/services:** none.
- **Security:** no routes/permissions of its own. `glift_renderer()` concatenates user-supplied filter arguments into an inline `<script>` and `<a href>` **without escaping** — a user allowed to use the format can inject arbitrary JS/markup (stored XSS). Grant this filter only to trusted roles / trusted text formats.