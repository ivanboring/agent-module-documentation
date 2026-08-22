# Configuration

Comment Submissions Limit lets you cap comment submissions along three dimensions,
which you combine to describe the rule you want:

- **Per comment type** — apply the limit to a specific comment type, so different
  kinds of comments can have different rules.
- **Per comment field value** — scope the limit to particular comment field
  values, for finer‑grained control.
- **Per time interval** — the window over which submissions are counted (the rate).

Together these let you express rules like "no more than *N* comments of this type
within this interval." Set the limits to match your site's traffic: tight enough to
blunt bursts of spam and flooding, but loose enough that genuine, active commenters
aren't blocked.

## Review the permission

The module provides its own permission, managed at **People → Permissions**
(`/admin/people/permissions`). Review it and grant it to the roles that should be
exempt from (or subject to) the limit — typically you'd let trusted or
administrative roles post without being throttled while ordinary users remain
rate‑limited.

## Tips

- **It's a rate limiter, not a filter.** This module controls how *quickly*
  comments arrive; it doesn't judge their content. Pair it with moderation or other
  anti‑spam tools for content quality.
- **Start conservative and adjust.** If legitimate users hit the limit, widen the
  interval or raise the count; if spam still gets through in bursts, tighten them.
