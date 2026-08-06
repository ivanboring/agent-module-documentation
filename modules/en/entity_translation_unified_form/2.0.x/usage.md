<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Translation Unified Form puts every language's translatable fields into one form instead of one form per language.

---

Drupal's translation UI is one form per language, reached through a translate tab. That is architecturally clean and editorially awkward: translating a page means opening the source in one tab, the target in another, and copying between them — and a field added later is easy to miss in some languages and not others.

A unified form puts them side by side. The translator sees the source text next to the field they are filling, which is how translation actually works, and nothing is missed because everything is on one screen.

**Two things follow from combining the forms, and both are worth checking on a real content model.** Saving becomes one operation across several translations, so validation, moderation state and revisioning apply to a set rather than to one language — check what happens when one language fails validation and the others do not, and what a moderation transition means for a set of translations edited together.

And the form gets large. A content type with thirty translatable fields in four languages is a hundred and twenty widgets on one page, which is slow to render and hard to navigate. It suits a small number of languages and a moderate field count; past that, the per-language form it replaces starts looking reasonable again.

---

- Translate with source and target side by side.
- Avoid switching between browser tabs.
- See every language on one screen.
- Stop missing a field in one language.
- Speed up a translator's workflow.
- Check validation across translations.
- Check moderation on a combined save.
- Understand revisioning for a set of translations.
- Assess form size for many languages.
- Assess form size for many fields.
- Decide when the per-language form is better.
- Configure which fields are translatable.
- Train translators on the unified form.
- Audit translation completeness.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
