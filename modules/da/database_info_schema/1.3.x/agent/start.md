<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Database Info — agent index

**Database schema info** (tables/columns/row counts) via Drush + admin pages. Version **1.3.1**. Core `^10||^11`.

**SECURITY (1.3.1):** `/admin/database/info` + `/admin/database/table/{tablename}` are `_permission: access content` (anonymous) and `{tablename}` is raw-concatenated into SQL → unauthenticated schema/row-count disclosure + SQL injection. Gate behind an admin permission + validate the table name before use.