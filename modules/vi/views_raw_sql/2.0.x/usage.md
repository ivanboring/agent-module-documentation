<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Raw SQL lets a view include a raw SQL expression as a field, an argument or a sort, for the cases where the Views UI cannot express what is needed.

---

Views builds queries from plugins, and the plugin set covers what most sites need. It does not cover SQL expressions: a computed distance, a `CASE` that orders one status before another, a window function, an aggregate the aggregation UI does not offer. The alternatives are a custom views handler — correct, and a module to write and maintain — or a raw expression, and this module supplies the second. Version **2.0.0-alpha1** (2024) on `^10.3 || ^11`, depending on core `views`. It handles the permission properly, which is the first thing to check in a module like this: `edit views raw sql` is `restrict access: TRUE` and carries an explicit **`warning:`** key — *"Raw SQL can expose sensitive site information, and could allow a malicious user to edit the site"* — surfaced on the permissions page, and the raw-SQL textarea only appears in the handler's options form when the current user holds it. Treat that permission as equivalent to database access, because it is. Two things to know beyond the permission. The expression is passed through **`\Drupal::token()->replace()`** before it reaches the query, so tokens can be interpolated — useful, and worth being deliberate about, since a token that resolves to visitor-supplied data is putting visitor data into a SQL string. And an expression written by hand is **not portable**: it binds the view to MySQL or to PostgreSQL, and it will not be rewritten by anything that alters the query, so it survives changes elsewhere that a proper handler would have adapted to.

---

- Add a computed column to a view.
- Sort by a SQL expression.
- Order one status before another.
- Compute a distance in the query.
- Use an aggregate the UI lacks.
- Add a CASE expression to a sort.
- Avoid writing a custom views handler.
- Compute a ratio across two fields.
- Sort by a derived value.
- Add a conditional numeric field.
- Rank results by a formula.
- Use a database function in a view.
- Prototype a query change quickly.
- Sort nulls last.
- Add a calculated score column.
- Compute an age from a date column.
- Express a sort the UI cannot.
- Add a subquery-derived value.
