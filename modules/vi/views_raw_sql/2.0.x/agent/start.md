<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Raw SQL (views_raw_sql) — agent index

Raw SQL expressions as Views **fields**, **arguments** and **sorts**. Depends on core `views`.
Version **2.0.0-alpha1** (2024). Core requirement `^10.3 || ^11`.

**The permission is handled properly** — the first thing to check in a module like this:
```yaml
edit views raw sql:
  restrict access: TRUE
  warning: 'Raw SQL can expose sensitive site information, and could allow a malicious user to edit the site.'
```
The raw-SQL textarea only renders in the handler's options form when the current user holds it.
**Treat this permission as equivalent to database access, because it is.**

**Two things beyond the permission:**
1. **Tokens are interpolated.** `query()` runs the stored expression through
   `\Drupal::token()->replace()` before adding it to the query. Useful, and worth being deliberate
   about: a token resolving to visitor-supplied data puts visitor data into a SQL string.
   *Checked on this site* — `Token::replace()` HTML-escapes replacements by default, so a username
   like `bob' OR 1=1 --` arrives as `bob&#039; OR 1=1 --` and does not break the string literal.
   That mitigation is incidental (HTML escaping is not SQL escaping) — a backslash is **not**
   escaped and can still shift a string boundary in MySQL's default mode. Do not rely on it: keep
   visitor-derived tokens out of raw SQL.
2. **Expressions are not portable and not rewritable.** They bind the view to one database engine,
   and nothing that alters the query will adapt them — a proper custom handler would have adapted.
