<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views String Aggregation adds string aggregation to Views' aggregate functions — the SQL `GROUP_CONCAT` family — so a grouped view can list the values in each group rather than only counting them.

---

Views supports aggregation with COUNT, SUM, MIN, MAX and AVG, all of which reduce a group to a number. The question a report frequently asks is different: not "how many tags does each article have" but "which tags", as a comma-separated list on one row. SQL answers that with `GROUP_CONCAT` (and its equivalents on other backends), and this module exposes it as a Views aggregation function so a grouped listing can produce it without a custom query or a preprocess that loops rows. It depends on core `views` and targets `^10 || ^11`. Two constraints come from the database rather than the module and should be stated. `GROUP_CONCAT` is **not portable** — MySQL and MariaDB have it, PostgreSQL uses `string_agg`, SQLite differs again — so a view built on it constrains the site's database. And MySQL truncates the result at `group_concat_max_len`, **1024 bytes by default**, silently: a group with many values produces a list that simply stops, with no error, which is a subtle and easily-missed data-correctness problem in a report.

---

- List each group's values in one row.
- Show all tags for an article in a report.
- Concatenate names in a grouped view.
- Build a summary report.
- Avoid a preprocess loop over rows.
- Show categories per item in a listing.
- Export grouped data to CSV.
- Summarise related entities in a column.
- Build a management report.
- Show authors per publication.
- Aggregate strings without custom SQL.
- List members of each group.
- Improve a data export.
- Show a comma-separated summary.
- Reduce query count in a report.
- Aggregate values for a dashboard.
- Summarise a many-to-many relationship.
- Build a flat export from grouped data.
