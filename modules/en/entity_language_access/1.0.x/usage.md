<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Language Access denies access to canonical view of translatable content entities outside their original or translated language.

---

Entity Language Access **denies the canonical view of a translatable content entity when the current
interface language is neither the entity's original language nor an available translation** — so a node that only
exists in English/French returns forbidden when viewed in a language it has no translation for, instead of falling
back. It depends on core Language and provides its own permissions.

Use it to stop untranslated content showing under the wrong language. It is an **access-control** feature: it
implements an entity access check that returns `AccessResult::forbidden()` for the canonical view when
`current_language !== entity language` and no matching translation exists (with a permission to bypass). Because
it's an entity-access result, it is honored by the canonical route and by per-entity access checks (Views/JSON:API
that call entity access). Scope notes: it governs the **canonical view** based on language (a display/access rule),
so verify it composes as intended with your multilingual setup, language fallback, and any listing/API paths you
rely on. It has this specific access role and no broader one. Enable it to enforce language-scoped view access.

---

- Forbid canonical view in a non-matching language.
- Return forbidden when no translation exists.
- Stop untranslated content showing.
- Depend on core Language + provide a bypass permission.
- Serve access control.
- Implement an entity access check.
- Return AccessResult::forbidden() when current_language !== entity language.
- Be honored by the canonical route + per-entity access checks (Views/JSON:API).
- Govern the canonical VIEW based on language (display/access rule).
- Compose with your multilingual setup + language fallback (verify).
- Enable it to enforce language-scoped view access.
- Configure the bypass permission.
- Handle language access.
- Gate by language.
- Configure the access.
- Deny views.
- Handle translations.
- Restrict by language.
- Check entity access.
- Provide language-scoped view access.
