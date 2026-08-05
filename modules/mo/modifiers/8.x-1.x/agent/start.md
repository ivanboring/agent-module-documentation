<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Modifiers (modifiers) — agent index

**Plugin type** for presentation adjustments — background, spacing, animation, colour — applied by
editors to entities and pages. No dependencies; a framework other modules and themes build on.
Version **8.x-1.8**. Core requirement `^10.2 || ^11 || ^12`.

**The three alternatives and why each fails at scale:**
- **a field per option** — a content type with fifteen presentation fields and no coherence;
- **a free-text CSS class field** — hands markup to editors and hopes;
- **a paragraph type per visual variant** — multiplies the type list until nobody finds the right
  one.

A plugin type makes each modifier **declared and discoverable**, with its own configuration and
rendering: the set is a **developer-managed vocabulary**, the choice is **editorial**.

**Two things follow:**
1. **Modifier values are stored on the entity — they are content.** They export with a migration,
   appear in revisions, and a modifier **removed or renamed leaves entities referring to something
   that no longer exists** (the same dependency trap as behaviour plugins and paragraph types).
2. **Presentation vocabularies grow unless someone owns them.** The value over a free-text class is
   that the options are **finite and named** — the moment "just add one more modifier" becomes
   routine, the module has become the free-text field with extra steps.
