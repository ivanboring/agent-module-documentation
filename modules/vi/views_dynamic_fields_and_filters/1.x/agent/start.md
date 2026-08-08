<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Dynamic Fields and Filters (views_dynamic_fields_and_filters) — agent index

Dynamically **enable/disable a view's fields and filters** by config/context. Version **1.2.0**.

**Security note:** toggling display ≠ access. A dynamically-hidden field is **not** access-protected;
a **filter toggled off may broaden results** — confirm dynamic changes don't inadvertently expose
data.