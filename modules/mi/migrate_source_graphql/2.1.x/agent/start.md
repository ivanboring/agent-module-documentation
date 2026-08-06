<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Migrate Source GraphQL (migrate_source_graphql) — agent index

Migrate **source plugin** reading rows from a **GraphQL endpoint**. Depends on core `migrate`.
Version **2.1.1**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why not the JSON source plugin:** it loses what GraphQL is for. The **query declares exactly which
fields are wanted**, so the response is shaped for the migration rather than filtered afterwards,
and **nested relationships come back in one request** instead of one per row.

**Three things decide whether an API migration succeeds:**
1. **Pagination is the mechanism to get right.** GraphQL APIs page by **cursor**, not offset — a
   migration that does not follow cursors correctly **silently imports the first page and reports
   success**. That is the failure discovered after go-live.
2. **Rate limits apply to migrations too**, and a migration is the most aggressive client an API
   will meet. Check behaviour under throttling: retrying is right, failing loudly is acceptable,
   **skipping rows silently is not**.
3. **The source is a remote system that can change under you.** A rerunnable migration needs the
   **query pinned and the response validated** — a field disappearing upstream becomes **empty
   content** downstream rather than an error.
