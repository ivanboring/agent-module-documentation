<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DB Optimize — agent index

Optimizes **database tables** via an admin interface / Drush (`OPTIMIZE TABLE` — reclaim space/defragment).
Config at `dboptimize.optimize_form`. Provides **Drush commands**. Version **1.2.2**. Core `^9||^10||^11||^12`.

Admin/DB-maintenance tool — optimizing **locks tables** (affects a live site); run in low-traffic windows,
restrict to trusted admins. No content-access role.
