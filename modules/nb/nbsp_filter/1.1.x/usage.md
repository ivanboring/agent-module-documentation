<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
NBSP Filter manages non-breaking spaces in filtered text — inserting them where typography requires and removing the stray ones editors accumulate.

---

Non-breaking spaces are a genuine typographic requirement and a genuine editorial nuisance. Required, because some languages and conventions demand them: French puts one before `; : ! ?`, many style guides forbid a line break between a number and its unit or between a title and a surname. A nuisance, because editors pasting from Word bring hundreds of them in, where they defeat text wrapping, break search matching and leave odd gaps. Handling this as a **text filter** rather than in the editor is the right architecture — it applies at render time to all content including migrated and API-submitted text, where an editor plugin only affects what is typed after installation. The module is configured through the ordinary text format interface (`configure: filter.admin_overview` points at the format list), depends on core only, and spans `^8 || ^9 || ^10 || ^11`. Two notes: filter order matters, since a filter that runs after markup-restricting filters sees different text; and inserting non-breaking spaces changes what search indexes and string comparisons see, so a site with strict search matching should verify the interaction.

---

- Add non-breaking spaces before French punctuation.
- Strip stray nbsp pasted from Word.
- Keep a number and its unit together.
- Prevent a line break in a title.
- Apply typographic rules at render time.
- Clean up imported content's spacing.
- Enforce a house style automatically.
- Handle French typography correctly.
- Fix wrapping around currency symbols.
- Apply rules per text format.
- Cover migrated content automatically.
- Keep initials with a surname.
- Reduce manual typographic correction.
- Improve text rendering quality.
- Fix spacing in a multilingual site.
- Clean up editor-introduced whitespace.
- Apply typography without editor plugins.
- Support a publishing style guide.
