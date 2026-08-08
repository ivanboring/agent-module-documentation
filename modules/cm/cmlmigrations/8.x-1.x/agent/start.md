<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CML Migrations — agent index

Migrate configs to **import CommerceML (1C) exchange data** into Drupal (catalog/product/order), built on
Migrate Tools. Depends on `migrate_tools`. Config at `cmlmigrations.settings`; provides **Drush commands**.
Version **8.x-1.38**. Core `^9||^10||^11`.

Developer/migration (Migrate framework, Drush) — imported data is external input; use with `cmlapi`. No
runtime access role.
