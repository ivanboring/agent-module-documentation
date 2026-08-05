<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Countdown (countdown) — agent index

Block counting down to (or up from) a chosen moment. Depends on core `block`.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

Key facts:
- No routes, no permissions, no admin section — configuration lives in the **block instance**
  (validated by `config/schema`), so it exports with `drush cex` and several countdowns can run
  with different targets.
- Counts **up from a past date** as well as down to a future one.
- The timer runs client-side (`js/lib`, `templates/countdown.html.twig`), so it follows the
  **visitor's clock**, not the server's, and needs no cache invalidation as time passes.
- `js/countdown.admin.js` + `css/countdown.admin.css` are for the block configuration form only.
- Where it appears is a block-visibility question; combine with condition plugins (e.g.
  `request_data_conditions`, wave 58) for finer targeting.
- `.info.yml` reports the legacy `version: '8.x-1.11'`.
