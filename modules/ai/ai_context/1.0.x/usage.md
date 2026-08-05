<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Context Control Center manages the **context** fed into AI agent prompts: reusable context items, scoped by dimensions such as entity bundle, language, site section or tag, with usage tracking so you can see which context actually reached which prompt.

---

AI agents produce better output when given the right background, but that background tends to be scattered through code and prompts. This module makes it content. An `ai_context_item` entity holds a piece of context — editable, translatable (there is a translation handler and `config_translation` integration), and moderatable via `content_moderation`, so context can be drafted and reviewed like any other content. Which items apply where is decided by **scope plugins**, a plugin type of the module's own (attribute `#[AiContextScope]`, namespace `Plugin/AiContextScope`, manager `AiContextScopeManager`): shipped scopes cover global, entity bundle, target entity, language, site section and tag. A second entity, `ai_context_usage`, records where context was actually used, with its own list builder and Views data so usage can be reported on. Around that sit access checks (`AiContextOverviewAccessCheck`, `AiContextUsageAccessCheck`), an uninstall validator, caching helpers, markdown handling for authoring context in a readable format, AI function-call plugins integrating with the AI module's tool system, Scheduler and diff plugin support, and an admin UI under `/admin/config/ai/context`. Permissions are all `restrict access`, reflecting that context content directly shapes what an AI agent does.

---

- Give AI agents consistent background about the organisation.
- Store tone-of-voice guidance as reusable context.
- Scope context to a specific content type.
- Provide different context per language.
- Attach context to a particular site section.
- Tag context items and select them by tag.
- Review context changes through content moderation.
- Translate context items for multilingual agents.
- Track which context was used in which prompt.
- Report on context usage with Views.
- Author context in Markdown for readability.
- Prevent agents from receiving stale guidance.
- Give editors control over prompt context without code.
- Restrict context editing to trusted roles.
- Provide product knowledge to a support agent.
- Supply editorial policies to a content-generation agent.
- Scope context to a single target entity.
- Schedule context changes with Scheduler.
- Diff two versions of a context item.
- Expose context through the AI module's function-call system.
- Debug why an agent produced a particular answer.
- Keep prompt context out of module code.
- Reuse one context item across several agents.
- Audit context usage for compliance.
