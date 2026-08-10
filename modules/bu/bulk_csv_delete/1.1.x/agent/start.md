<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bulk CSV Delete — agent index

A **Drush command to bulk-delete entities listed in a CSV** (batched). Version **1.1.0**. Core `^10||^11`.

Drush/CLI admin tool — **no web route** (limited to trusted shell/Drush operators); calls `$storage->delete()`
by raw id with **no per-entity access check** (fine for CLI, but blunt: deletes whatever ids you give it — back
up + verify first). Don't web-expose without adding perms + access checks.
