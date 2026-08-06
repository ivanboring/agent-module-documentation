<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Like (like) — agent index

Adds a **like button** to entities, recording who liked what and displaying a count. Configure at
`/admin/config/…/like`. Version **2.0.4**. Core requirement `^10.1 || ^11`.

**Why the smallest engagement unit is the useful one:** it costs nothing, so a reader who would not
comment will press it — and the aggregate tells an editorial team which of two hundred articles
**resonated**, which page views do not (a view records **arrival**, a like records **approval**).

**Three things to decide before adding one:**
1. **Anonymous liking is unmeasurable.** Without an account the only identity is a cookie or an IP,
   so the count **can be inflated by anyone with a script** — a site displaying it as a signal is
   publishing something it cannot stand behind. Requiring authentication makes the number mean
   something and **reduces it substantially**. Make that trade deliberately.
2. **A like is personal data about an opinion.** An **aggregate count** and a **list of likers** are
   different disclosures, and the second may be sensitive depending on what is being liked.
3. **Counts are a caching problem.** A per-entity number that changes constantly **cannot sit inside
   a page cached for everyone** — the button and count usually need to be a **lazy-loaded
   placeholder** rather than part of the rendered node.
