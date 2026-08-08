<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Remove system.schema key/value (rmkv) — agent index

**Drush commands** to delete orphaned `system.schema` key/value entries — for a module whose **code
is gone but whose schema record remains** (removed without uninstalling first). Version **2.2.0**.
Core `>=10`. No routes/permissions/config — a CLI recovery tool.

Fixes the "Drupal knows about a module it cannot find" state: update warnings, `pm:uninstall`
unable to act (no code to run `hook_uninstall`), phantom dependency.

**Recovery tool, not a site feature.** Run deliberately; **confirm which entry is orphaned first** —
removing the wrong key tells Drupal a still-present module is uninstalled. Relates to the campaign's
orphaned-`system.schema` recovery scenario.