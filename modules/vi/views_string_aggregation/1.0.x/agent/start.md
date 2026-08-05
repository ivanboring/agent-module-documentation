<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views String Aggregation (views_string_aggregation) — agent index

Adds **string aggregation** (`GROUP_CONCAT`-style) to Views' aggregate functions. Depends on core
`views`. Core requirement `^10 || ^11`.

Key facts — both constraints come from the database, not the module:
- **Not portable.** `GROUP_CONCAT` is MySQL/MariaDB; PostgreSQL uses `string_agg`, SQLite differs
  again. A view built on it constrains which database the site can run on — relevant to a
  migration or a multi-environment estate.
- **MySQL truncates silently at `group_concat_max_len` (1024 bytes by default).** A group with many
  values produces a list that simply stops, with **no error**. That is a data-correctness problem
  in a report and easy to miss — raise the limit or bound the group size, and check long groups
  explicitly when validating a report.
- Fills a real gap: Views' built-in aggregation (COUNT/SUM/MIN/MAX/AVG) reduces a group to a
  number; this answers "which values", not "how many".
