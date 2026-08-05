<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Text Block (text_block) — agent index

A block whose text is stored in **configuration**, not in a `block_content` entity. Depends on
core `block`. Core requirement `^10.1 || ^11`.

Key facts:
- The point is deployability. Core's custom blocks are *content*: they do not appear in
  `drush cex` output and must be recreated or shipped as default content per environment. A
  Text Block's body lives in the block plugin's configuration, so it lands in `block.block.*`
  and moves with `drush cex` / `drush cim` like any other config.
- Whole module is `src/Plugin/Block`, `config/schema`, and tests. **No routes, no permissions,
  no services, no `src/Form`.**
- Editing the text means editing block configuration → `administer blocks`. There is no separate
  permission, and no per-block editorial access. If editors need to own the wording, use a core
  custom block instead — this module deliberately takes that away.
- Because the text is config, a config import will **overwrite** any change made through the UI
  on that environment. Say so when recommending it for editor-facing copy.
- Release note: the `.info.yml` still reports `version: '8.x-1.4'` (the pre-semver drupal.org
  packaging string) while the project is tracked as 1.4.x here.
