<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AUTO_INCREMENT Alter allows altering the AUTO_INCREMENT value of database tables on MySQL.

---

AUTO_INCREMENT Alter lets administrators change the `AUTO_INCREMENT` starting value of database tables —
useful when you need new rows (e.g. node/order IDs) to begin at a specific number, or to reset a counter. It
depends on MySQL, provides Drush commands and its own permissions, and is configured at
`auto_increment_alter.list_tables`.

Use it deliberately for the rare cases where a table's next-ID must be set. **This is a powerful,
direct-database operation** — it runs `ALTER TABLE ... AUTO_INCREMENT` on real tables, so it must be
restricted to trusted administrators: setting an AUTO_INCREMENT below existing max values or on the wrong
table can cause duplicate-key errors or data-integrity problems, and it bypasses application logic. Grant
its permission only to trusted admins, use it on the intended tables, and back up first. It has no
content-access role beyond its permission. Configure and run against the target tables.

---

- Alter table AUTO_INCREMENT values.
- Set new IDs to start at a number.
- Reset ID counters.
- Depend on MySQL.
- Provide Drush commands.
- Provide its own permissions.
- Run ALTER TABLE AUTO_INCREMENT directly.
- Restrict to trusted admins.
- Avoid setting below existing max (duplicate keys).
- Back up before altering.
- Use on the intended tables only.
- Understand it bypasses app logic.
- Have no content-access role beyond permission.
- Configure at list_tables.
- Change ID sequences deliberately.
- Handle a direct DB operation carefully.
- Set AUTO_INCREMENT.
- Run against target tables.
- Grant permission to trusted admins.
- Alter DB counters.
