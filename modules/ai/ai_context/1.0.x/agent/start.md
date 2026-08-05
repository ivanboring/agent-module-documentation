<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Context Control Center (ai_context) — agent index

Manages the context supplied to AI agent prompts: context-item content entities, scope plugins
that decide where each applies, and usage tracking. Installed release **1.0.0-beta3**.
Requires `ai`, `ai_agents`, core `content_moderation`, `options`, `taxonomy`.
Admin UI under `/admin/config/ai/context` (`configure: ai_context.overview`).

Key facts:
- Entities:
  - **`ai_context_item`** — the context content itself (`Entity/AiContextItem.php`), with
    `AiContextItemStorage`, `AiContextItemListBuilder`, `AiContextItemTranslationHandler`;
    moderatable and translatable (`ai_context.config_translation.yml`).
  - **`ai_context_usage`** — a record of context actually used
    (`Entity/AiContextUsage.php`, `@ContentEntityType`), with `AiContextUsageListBuilder` and
    `AiContextUsageViewsData` for reporting.
- **Plugin type `AiContextScope`** — attribute `#[AiContextScope]`
  (`src/Attribute/AiContextScope.php`), namespace `Plugin/AiContextScope`, manager
  `AiContextScopeManager`, base/interface `AiContextScopeBase` / `AiContextScopeInterface`.
  Shipped scopes: `AiContextScopeGlobal`, `AiContextScopeEntityBundle`,
  `AiContextScopeTargetEntity`, `AiContextScopeLanguage`, `AiContextScopeSiteSection`,
  `AiContextScopeTag`. Scopes are "categories/dimensions attributed to context items, enabling
  more intelligent context selection based on multiple criteria".
- Access: `Access\AiContextOverviewAccessCheck`, `Access\AiContextUsageAccessCheck`;
  route `ai_context.context_redirect` (`/admin/config/ai/context`) requires
  `view ai context items+create ai context item+administer ai context` (OR semantics).
- Permissions are **all `restrict access: true`**, e.g. `administer ai context`,
  `view ai context items`, `view any unpublished ai context item` — appropriate, since context
  content steers agent behaviour.
- Also present: `AiContextUninstallValidator` (blocks uninstall while data exists),
  `src/Markdown/` (authoring context in Markdown), `Plugin/AiFunctionCall` +
  `Plugin/AiFunctionGroup` (AI module tool integration), `Plugin/Scheduler`, `Plugin/diff`,
  `Plugin/views`, `Cache/`, `Event/`, `EventSubscriber/`, `Service/`, `Utility/`.

Writing a scope plugin:

```php
#[AiContextScope(
  id: 'my_scope',
  label: new TranslatableMarkup('My scope'),
)]
final class MyScope extends AiContextScopeBase { /* … */ }
```

Beta-quality: expect entity schema and plugin signatures to still move between releases.
