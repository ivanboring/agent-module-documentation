<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Modifiers provides a plugin type for presentation adjustments — background, spacing, animation, colour — that editors apply to entities and pages without touching CSS.

---

Component-built pages produce a recurring requirement: this section needs a dark background, that one needs more space above it, this card should animate in. Sites solve it three ways and all three go wrong at scale. A field per option produces a content type with fifteen presentation fields and no coherence. A free-text CSS class field hands markup to editors and hopes. A paragraph type per visual variant multiplies the type list until nobody can find the right one. A **plugin type** is the fourth: each modifier is a declared, discoverable thing with its own configuration and its own rendering, so the set is a developer-managed vocabulary and the choice is an editorial one. Version **8.x-1.8** on `^10.2 || ^11 || ^12`, no dependencies — it is a framework other modules and themes build on. Two things follow. **Modifier values are stored on the entity**, so they are content: they export with a migration, appear in revisions, and a modifier that is removed or renamed leaves entities referring to something that no longer exists — which is the same dependency trap as behaviour plugins and paragraph types elsewhere in this campaign. And **presentation vocabularies grow unless someone owns them**: the value of a plugin type over a free-text class is that the options are finite and named, so the moment "just add one more modifier" becomes routine the module has become the free-text field with extra steps.

---

- Apply a dark background to a section.
- Add spacing above a component.
- Animate a card into view.
- Give editors presentation options.
- Avoid a free-text CSS class field.
- Reduce the number of paragraph types.
- Apply a colour scheme per section.
- Add a border style option.
- Let editors choose a layout variant.
- Standardise presentation choices.
- Apply an alignment modifier.
- Add a shadow to a component.
- Support a design system's tokens.
- Give a page a full-width treatment.
- Apply a text-size modifier.
- Add a background image option.
- Provide a discoverable option set.
- Keep styling choices editorial.
