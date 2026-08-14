<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Language Switcher (content_language_switcher) — agent index
**Adds an inline translation language switcher to entity edit forms, improving the content-translation admin UX.**

- **Version:** 1.0.x
- **Core:** ^8.7.7 || ^9 || ^10 || ^11
- **Depends on:** content_translation
- **Mechanism:** `hook_entity_type_alter` sets a `content_language_switcher` handler on translatable entity types; `hook_form_alter` (run late via `hook_module_implements_alter`) invokes `ContentLanguageSwitcherHandler::entityFormAlter()`; `hook_local_tasks_alter` removes the separate translate tabs.
- **Theme:** `content_language_switcher`.

**Security:** UX-only. No routes, permissions or mutating endpoints; access to editing translations is governed entirely by core Content Translation. No anonymous surface.
