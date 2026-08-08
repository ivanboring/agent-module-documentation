<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AUTO_INCREMENT Alter — agent index

Alters the **AUTO_INCREMENT value of database tables** (MySQL) — set new IDs to start at a number / reset
counters. Depends on `mysql`; Drush commands; provides permissions. Config at
`auto_increment_alter.list_tables`. Version **1.0.0-alpha5**. Core `^10||^11`.

**Security:** runs `ALTER TABLE ... AUTO_INCREMENT` directly — restrict to trusted admins; setting below
existing max / wrong table → duplicate-key/integrity issues; bypasses app logic; back up first. No
content-access role beyond permission.
