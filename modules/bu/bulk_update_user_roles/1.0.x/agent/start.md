<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bulk Update User Roles — agent index

**Update roles for all users in a single click** (bulk add/remove). Depends on core `user`. Version **1.0.4**. Core
`^10.3||^11`.

**SECURITY (campaign finding, Danger 3)** — the route requires only **`administer users`**, but the form offers
**every role incl. `administrator`** and `addRole()`s directly, **bypassing core's rule that role assignment needs
`administer permissions`**. An `administer users`-only account can grant itself/everyone the **admin role →
takeover**. Don't grant `administer users` to non-full-admins while enabled; fix = require `administer permissions`
+ filter to assignable roles.
