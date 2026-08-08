<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DB Optimize lets administrators optimize database tables through an admin interface, reclaiming space and defragmenting tables.

---

DB Optimize (dboptimize) lets administrators run database table optimization (e.g. MySQL `OPTIMIZE
TABLE`) through an admin interface — reclaiming space and defragmenting tables after large deletions/
updates — without needing direct database access. It is configured at `dboptimize.optimize_form`, is in the
System package, and provides Drush commands.

Use it for routine database maintenance from the Drupal UI/CLI. It is an administration/database-maintenance
tool; because optimizing tables locks them during the operation (which can briefly affect a live site),
run it during low-traffic windows and restrict access to trusted administrators. It has no content-access
role. Select the tables and run optimization.

---

- Optimize database tables from the UI.
- Reclaim space and defragment tables.
- Run OPTIMIZE TABLE.
- Avoid direct DB access.
- Configure at dboptimize.optimize_form.
- Provide Drush commands.
- Run routine DB maintenance.
- Restrict to trusted admins.
- Run during low-traffic windows.
- Understand table locking during optimize.
- Have no content-access role.
- Select tables to optimize.
- Maintain the database.
- Optimize after large deletions.
- Defragment tables.
- Run from UI or CLI.
- Reclaim table space.
- Optimize via admin interface.
- Handle DB maintenance.
- Optimize tables carefully.
