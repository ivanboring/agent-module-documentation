<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Subtitle (block_subtitle) — agent index

Adds a subtitle to **any block plugin's** configuration. Depends on core `block`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Works on **any** block — system, views, menu, custom — because the subtitle is stored in the
  block's own configuration rather than as a field. That is the advantage over a custom block
  content type, which cannot help with a views or system block.
- Exports with the block configuration in `drush cex`.
- Permission **`administer block subtitle`** is separate from core's `administer blocks`, so
  setting a subtitle can be delegated without granting block placement.
- Whole module: `block_subtitle.module`, `config/schema`, `.permissions.yml`. No routes, no
  `src/`.
- The subtitle is exposed to the block template — markup and placement stay a theme decision.
- `.info.yml` reports the legacy `version: '8.x-1.4'`.
