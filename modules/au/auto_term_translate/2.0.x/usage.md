<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auto Taxonomy Term Translation brings Auto Node Translate's machine-translation workflow to taxonomy terms — a translate form on the term itself and a bulk form covering a whole vocabulary.

---

Term translation is the part of a multilingual build that tends to be left until last and then done by hand. A site with a few hundred tags, categories or product attributes needs every one of them translated for the language switcher to work properly, and translating them one at a time through the standard content-translation UI is slow enough that people skip it. This module adds a local task on the term and, more usefully, a bulk form at `/vocabulary/{vocabulary}/bulk-auto-translate-form` that runs the whole vocabulary through the translation provider Auto Node Translate is configured with.

Access is done carefully, which is worth noting because a bulk translate form is exactly the kind of route that gets a flat permission. `AutoTermTranslateAccessCheck` resolves the entity type's `content_translation` access callback first and returns that result if it allows, then falls back to a per-entity permission check — so the route inherits core's translation access rather than replacing it. The module's own permission, `use bulk auto translate`, is marked `restrict access: true`.

The judgement call at deployment is editorial, not technical. Machine translation of single-word terms is where machine translation is weakest: there is no context to disambiguate, and a term is often the label a whole section of the site is filed under. Run the bulk form, then have someone review the output — treat it as a first pass, not a finished translation.

---

- Translate a whole vocabulary in one operation.
- Machine-translate taxonomy terms into a new language.
- Add a translate tab to individual terms.
- Complete term translations left behind by a content migration.
- Bootstrap a new site language quickly.
- Translate product attribute terms.
- Translate category and tag labels for a language switcher.
- Reuse Auto Node Translate's configured provider for terms.
- Restrict bulk translation to trusted editors.
- Respect core's content translation access on term routes.
- Produce a first-pass translation for human review.
- Fill gaps where only some terms are translated.
- Translate terms for a newly added vocabulary.
- Keep term translations in step after adding terms.
- Decide which vocabularies are safe to machine-translate.