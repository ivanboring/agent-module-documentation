<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Migrate Source GraphQL lets a Drupal migration read its source rows from a GraphQL endpoint.

---

Migrate's source plugins cover databases, CSV, XML, JSON and Drupal itself, which reflects where content used to come from. Increasingly it comes from an API, and a growing share of those are GraphQL — a headless CMS such as Contentful or Sanity, another Drupal exposing `graphql`, a commerce platform, an internal service. Reading those with the JSON source plugin means fetching by hand and losing what GraphQL is for: the query declares exactly which fields are wanted, so the response is shaped for the migration rather than filtered afterwards, and nested relationships come back in one request instead of one per row. Version **2.1.1** on a core range spanning `^8` through `^11`, depending on core `migrate`. Three things that decide whether a migration from an API succeeds. **Pagination is the mechanism to get right**: GraphQL APIs page by cursor rather than offset, and a migration that does not follow cursors correctly silently imports the first page and reports success — which is the failure that gets discovered after go-live. **Rate limits apply to migrations too**, and a migration is the most aggressive client an API will meet, so expect throttling and check the plugin's behaviour when it happens: retrying is right, failing loudly is acceptable, and skipping rows silently is not. And **the source is a remote system that can change under you**, so a migration that must be rerunnable needs the source query pinned and the response validated, because a field disappearing upstream turns into empty content downstream rather than an error.

---

- Migrate content from a headless CMS.
- Import from Contentful or Sanity.
- Migrate from another Drupal's GraphQL API.
- Import product data from a commerce API.
- Read migration rows from an endpoint.
- Import nested relationships in one query.
- Migrate from an internal service.
- Import only the fields needed.
- Support an API-sourced migration.
- Migrate from a decoupled front end's backend.
- Import content on a schedule.
- Sync content from an external system.
- Migrate from a partner's API.
- Import taxonomy from a GraphQL source.
- Support a phased platform migration.
- Import users from an API.
- Migrate media references from an endpoint.
- Read paginated API data into Drupal.
