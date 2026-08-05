<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Translatable config pages (translatable_config_pages) — agent index

Fielded settings entity with **content translation** support. Depends on core
`content_translation` and `language`. Core requirement `^8.8 || ^9 || ^10 || ^11`.

Key facts:
- **These are content entities, not configuration** — despite the name. That is the whole point:
  content entities translate through the normal translation UI, whereas plain configuration needs
  config translation and cannot be edited per language as naturally. The trade-off is the mirror
  image: values do **not** move with `drush cex`/`cim`, so they must be entered per environment
  or handled as content.
- Three permissions, well separated:
  - `administer translatable config pages types` — define the types (**`restrict access: true`**);
  - `manage translatable config pages` — edit the values;
  - `view translatable config pages`.
  So an editor can maintain values without being able to change the structure.
- Surface: `src/TranslatableConfigPagesManager.php`, `src/Entity/`,
  `src/TranslatableConfigPagesAccessControlHandler.php`, two list builders, `src/Routing/`,
  `config/schema`.
- Compare `config_terms` (wave 61), which goes the other way — making *terms* configuration for
  deployability. Choose by whether the values must deploy (config) or be translated and edited
  (this).
