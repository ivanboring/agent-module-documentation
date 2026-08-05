<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pathauto Update (pathauto_update) — agent index

Regenerates Pathauto aliases when the entities behind their **tokens** change. Depends on
`pathauto`, `token` and **`url_entity`** (wave 57). PHP >= 8.0.
Core requirement `^9.4 || ^10 || ^11`. No routes, permissions or configuration.

Key facts:
- **The problem it solves:** Pathauto resolves tokens at save time and never revisits them. A
  pattern like `[node:field_category:entity:name]/[node:title]` keeps the old term name in the
  alias forever after the term is renamed, because nothing resaved those nodes.
- Architecture: `PathAliasDependencyRepository` stores the alias→entity dependencies,
  `PatternTokenDependencyProviderManager` + a **`PatternTokenDependencyProvider` plugin type**
  work out dependencies per token, and `src/EventSubscriber/` triggers regeneration. Add a
  provider for a custom token rather than patching.
- **Scale consideration:** renaming a widely-used term can cascade into thousands of alias
  regenerations. Confirm the work is batched/queued before doing it on a large site.
- If the **old** aliases matter for SEO, Pathauto's own "create a redirect" setting is what
  preserves them — this module changes the alias, it does not keep the old one alive.
