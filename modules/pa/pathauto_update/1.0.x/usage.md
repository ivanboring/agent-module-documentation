<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Pathauto Update regenerates URL aliases when the *values behind* their tokens change — so renaming a taxonomy term updates the aliases of every node whose pattern includes that term.

---

Pathauto builds an alias from a token pattern at save time, and then forgets. A pattern like `[node:field_category:entity:name]/[node:title]` produces `/health/flu-advice`, and when someone renames the Health term to Wellbeing, every alias built from it silently keeps saying `health` — because nothing resaved those nodes. The usual remedy is a mass resave, which is expensive and easy to forget. This module tracks the dependency instead: `PathAliasDependencyRepository` records which entities an alias's tokens depend on, `PatternTokenDependencyProviderManager` with a **provider plugin type** works out those dependencies per token, and `src/EventSubscriber` regenerates affected aliases when a dependency changes. Its dependencies are informative — `pathauto`, `token`, and **`url_entity`** (documented in wave 57), whose whole purpose is resolving a URL to an entity. Requirements are PHP 8.0+ and core `^9.4 || ^10 || ^11`. The consideration for a large site is that renaming a widely-used term can cascade into regenerating thousands of aliases, so the work needs to be batched or queued — and if the old aliases matter for SEO, Pathauto's own "create a redirect" setting is what preserves them.

---

- Update aliases when a referenced term is renamed.
- Keep URLs correct after a taxonomy change.
- Avoid a mass resave to fix aliases.
- Track which entities an alias depends on.
- Regenerate aliases automatically.
- Fix stale aliases after a rebrand.
- Keep multilingual aliases in step.
- Update aliases when an author name changes.
- Avoid silently wrong URLs.
- Support a term-based URL structure.
- Reduce SEO damage from stale paths.
- Add a dependency provider for a custom token.
- Keep aliases consistent with content.
- Regenerate after a bulk term edit.
- Support a deep taxonomy URL pattern.
- Avoid manual alias maintenance.
- Detect which aliases a change affects.
- Keep redirects meaningful.
