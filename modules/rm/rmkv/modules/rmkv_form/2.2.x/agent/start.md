<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# rmkv_form (Remove system.schema key/value Form) — agent index

Submodule of **rmkv** — a **form UI** for the same operation rmkv exposes as Drush: deleting
orphaned `system.schema` key/value entries. Version **2.2.0**. Core `>=10`. Depends on `rmkv`.

Same surgical fix, browser instead of CLI. Same caution: deleting a schema record tells Drupal that
module is uninstalled — **confirm the entry is genuinely orphaned**, keep it behind a tight
permission, enable only when needed. See [[rmkv]].