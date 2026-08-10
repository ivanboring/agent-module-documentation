<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Entities — agent index

**Consumes data from external sources (APIs, files, DBs) as browsable Drupal entities** (via storage-client
plugins; no import to Drupal storage). Requires PHP 8.3. Provides permissions. Version **1.0.0-rc1**. Core
`^9||^10||^11`.

Integration/external-data — data from an **external source** (credentials as secrets, HTTPS, trusted source);
external-entity access follows your config (don't over-expose sensitive data). No access role of its own beyond
permission.
