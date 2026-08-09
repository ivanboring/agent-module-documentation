<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Backup allows easy backups of the site configuration.

---

Config Backup makes it easy to **back up the site's configuration** — creating downloadable/stored
snapshots of the active configuration so you can restore or diff it later. It depends on core Configuration
Manager, provides its own permissions, in the Config package.

Use it to snapshot configuration for safety. It is a configuration-management/administration feature.
Security note: **exported configuration can contain sensitive values** (API keys, settings) depending on your
setup, so treat config backups as **sensitive artifacts** — gate the backup/restore permissions to trusted
administrators and store the backups securely (don't expose them publicly). It has no access-control role
beyond its permission. Configure and run backups.

---

- Back up site configuration.
- Snapshot the active config.
- Restore or diff later.
- Depend on core Config Manager.
- Provide its own permissions.
- Create config snapshots.
- TREAT config backups as sensitive (may hold secrets).
- Gate backup/restore to trusted admins.
- Store backups securely.
- Have no access-control role beyond permission.
- Configure backups.
- Handle config backup.
- Snapshot config.
- Configure the backups.
- Back up config.
- Handle the snapshots.
- Restore config.
- Protect the backups.
- Run backups.
- Provide config backups.
