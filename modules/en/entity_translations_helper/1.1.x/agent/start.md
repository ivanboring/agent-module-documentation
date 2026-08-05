<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity translations helper (entity_translations_helper) — agent index

Utilities for working with entity translations in code. Depends on core `content_translation`.
No UI — infrastructure for other code. Version **1.1.1**. Core requirement `^9 || ^10 || ^11`.

**The bug it exists to prevent, which is the single most common multilingual mistake in custom
Drupal code:** `Node::load()` returns the entity in the **default** language, not the current one.
Code that loads a node and reads a field gets what the original author wrote, not the translation
the visitor is reading. The page looks right because *rendering* handles language — while a block,
a Views field plugin or a custom controller quietly serves the wrong one.

Correct handling means all of:
- `hasTranslation($langcode)` **before** `getTranslation($langcode)` — asking for one that does not
  exist **throws**;
- an explicit decision about **missing translations** — silent fallback and loud failure are both
  defensible, and only one is right per case;
- knowing a translation is a **distinct object** whose changes must be saved.

**Establish which fallback the helper implements before using it.** "Return the default translation"
and "return nothing" produce very different sites, and the choice belongs to the calling code.
