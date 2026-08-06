<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Auto Taxonomy Term Translation (auto_term_translate) — agent index

Extends **auto_node_translate** to taxonomy terms: a per-term translate form plus a per-vocabulary
bulk form at `/vocabulary/{vocabulary}/bulk-auto-translate-form`.
Version **2.0.0**. Core `^10.2 || ^11`. Depends on `content_translation`, `auto_node_translate`.
Shares that module's settings route (`auto_node_translate.settings`).

Permission: `use bulk auto translate` — **`restrict access: true`**.

Access is done properly: `Access/AutoTermTranslateAccessCheck` first calls the entity type's
`content_translation` **access callback** and returns it when allowed, falling back to a per-entity
permission check. It inherits core's translation access rather than replacing it — worth noting,
because a bulk route like this usually does the opposite.

Classes: `Routing/AutoTermTranslateRouteSubscriber`, `Form/BulkTranslationForm`,
`Form/TranslationForm`, `Plugin/Derivative/AutoTermTranslateLocalTasks`.

Editorial caution to pass on: single-word terms are the weakest case for machine translation — no
context to disambiguate, and terms label whole sections of a site. Treat output as a first pass.