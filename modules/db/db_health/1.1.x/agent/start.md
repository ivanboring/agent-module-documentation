<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DB Health — agent index

Reports **database health information like table sizes** (spot large/growing tables, diagnose bloat). Drush
commands. Config at `db_health.settings`. Version **1.1.8**. Core `^9||^10||^11`.

Admin/reporting — reads DB metadata (operational detail); keep the report admin-gated, don't expose
publicly. No access role.
