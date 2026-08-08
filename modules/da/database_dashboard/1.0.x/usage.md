<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Database Dashboard provides information about your database.

---

Database Dashboard provides an administrative dashboard with information about the site's database —
table sizes, row counts, and related statistics — at `/admin/reports/database`, so administrators can see
database usage/health at a glance. It provides its own permission (`access database_dashboard`), in the
Administration package.

Use it to monitor database usage. It is an administration/reporting feature reading database metadata; the
route is correctly gated by its permission (not public). The information is operational/sensitive (DB
structure, sizes), so keep the `access database_dashboard` permission restricted to trusted administrators.
It has no access-control role beyond its permission. View the dashboard.

---

- Show database information/stats.
- Report table sizes and row counts.
- Monitor database usage/health.
- Serve /admin/reports/database.
- Gate by the access database_dashboard permission.
- Read database metadata.
- Keep the permission restricted to admins.
- Not expose DB info publicly.
- Have no access-control role beyond permission.
- View the dashboard.
- Handle DB reporting.
- Show DB stats.
- Monitor the database.
- Configure access.
- Report DB usage.
- Show table sizes.
- Handle the dashboard.
- Report database health.
- Restrict the dashboard.
- View DB info.
