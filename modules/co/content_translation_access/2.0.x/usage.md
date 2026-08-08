<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Translation Access adds granular permissions for content translation.

---

Content Translation Access adds **granular translation permissions** to Drupal's content translation —
letting you control **who may translate which content**, by operation, entity type/bundle and (assigned)
language, rather than the coarse core "translate any entity" permission. It ships a
`content_translation_access_user` submodule and depends on core Content Translation, provides its own
permissions.

Use it for fine-grained editorial control over translations (e.g. a French editor may only translate into
French). This is an **access-control** feature and it is implemented in the correct idiom: its access handler
returns **`AccessResult::neutral()`** by default (it never grants unless a matching permission is held — so it
does **not** fail open), grants `allowed()` only when the per-operation/type/bundle permission passes, and
honours `bypass node access` / a `translate any entity` permission. Grant the generated `cta …` permissions
per role/language. Configure the translation permissions.

---

- Add per-language translation permissions.
- Control who may translate what.
- Gate by operation/type/bundle/language.
- Replace coarse translate-any control.
- Depend on core Content Translation.
- Provide a user submodule.
- Default to AccessResult::neutral() (no fail-open).
- Grant only when the permission passes.
- Honour bypass/translate-any permissions.
- Grant cta permissions per role/language.
- Provide its own permissions.
- Configure translation permissions.
- Handle translation access.
- Gate translations.
- Restrict translating.
- Configure per language.
- Handle the permissions.
- Control translations.
- Grant translate access.
- Provide granular translation control.
