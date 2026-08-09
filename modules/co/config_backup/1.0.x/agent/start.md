<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Backup — agent index

Creates/manages **backups of the site configuration** (snapshots to restore/diff). Depends on core `config`.
Provides permissions. Version **1.0.3**. Core `^8||^9||^10||^11`.

Config-management/admin — **exported config can contain sensitive values**: treat backups as sensitive, gate
backup/restore to trusted admins, store securely. No access role beyond permission.
