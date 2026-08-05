<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity translations helper provides utilities for working with entity translations in code, wrapping the awkward parts of Drupal's translation API.

---

Translated entities are one of the places where correct Drupal code and obvious Drupal code diverge, and the divergence is a bug factory. `Node::load()` returns the entity in the **default** language rather than the current one, so code that loads a node and reads a field gets whatever the original author wrote, not the translation the visitor is reading — the site looks right because rendering handles it, while a block, a Views field or a custom controller quietly serves the wrong language. Getting it right means `$entity->hasTranslation($langcode)` before `$entity->getTranslation($langcode)`, because asking for a translation that does not exist throws; it means deciding what to do when there is no translation, because falling back silently and failing loudly are both defensible and only one of them is correct for a given case; and it means knowing that a translation is a distinct object whose changes must be saved. A helper that packages those decisions once is worth more than its size, because each of them is otherwise re-derived per project and got wrong at least once. Version **1.1.1** on `^9 || ^10 || ^11`, depending on core `content_translation`, with no UI — it is infrastructure for other code. The thing to establish before using it is **which fallback it implements**, since "return the default translation when none exists" and "return nothing" produce very different sites, and the choice belongs to the calling code rather than to a helper's default.

---

- Load an entity in the current language.
- Check whether a translation exists.
- Get a translation safely.
- Avoid serving the wrong language in a block.
- Handle a missing translation deliberately.
- Simplify translation code in a module.
- Avoid a getTranslation exception.
- Write correct multilingual custom code.
- Fall back to the default language.
- Save a translated entity correctly.
- Iterate over an entity's translations.
- Support a multilingual custom controller.
- Reduce translation bugs in a codebase.
- Handle language in a Views field plugin.
- Translate a referenced entity's label.
- Support a decoupled multilingual API.
- Standardise translation handling.
- Avoid re-deriving translation logic per project.
