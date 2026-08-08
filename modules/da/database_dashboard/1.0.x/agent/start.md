<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Database Dashboard — agent index

An admin **dashboard showing database information** (table sizes/row counts/stats) at `/admin/reports/
database`. Gated by the `access database_dashboard` permission. Version **1.0.2**. Core `^9||^10||^11`.

Admin/reporting — reads DB metadata (operational/sensitive); keep the permission **restricted to trusted
admins**. No access role beyond permission.
