<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Auto Node Translate Bulk (ant_bulk) — agent index

Bulk runner for **Auto Node Translate**. Composer: `drupal/auto_node_translate ^3.0`.
Core requirement `^10.2 || ^11`. **Release is 2.0.0-rc4 — release candidate.**

| Route | Path | Permission |
|---|---|---|
| `ant_bulk.translate` | `/ant-bulk/translate` | **`use bulk auto translate`** (`restrict access: true`) |
| `ant_bulk.settings` | `/admin/config/regional/ant-bulk-settings` | `administer site configuration` |

Key facts:
- The restricted permission is doing real work. Bulk translation sends every selected node's
  content to the configured provider, and providers bill **per character** — so
  `use bulk auto translate` is effectively "may spend the translation budget". Treat it as a
  financial control as well as an editorial one.
- **Content leaves the site.** Anything selected is transmitted to a third-party translation
  provider, including unpublished nodes if they are in the selection. Confirm that is acceptable
  before a first run.
- Provider configuration belongs to `auto_node_translate`, not here — this module reuses it.
- Surface: `src/TranslationManager.php`, `src/Form/`, `src/Drush/`, `ant_bulk.api.php` (extension
  points), `ant_bulk.services.yml`.
- Prefer the Drush path for large runs; machine output should be reviewed before publication.
