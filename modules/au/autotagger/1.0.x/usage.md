<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
autotagger provides the core to configure automatic actions that tag content with taxonomy terms; submodules or custom plugins supply the tagging logic.

---

autotagger provides the core framework for automatically tagging content — configuring actions that
assign taxonomy terms to content based on rules/plugins. On its own it is just the core; you enable a
submodule (e.g. search-in-text matching) or write a plugin to supply the actual tagging logic (keyword
matching, AI classification, etc.). It depends on core Taxonomy.

Use it to automate categorization of content instead of tagging by hand. It is an automation/content
feature that writes taxonomy references onto content; configure which plugin does the tagging and against
which vocabularies. The tags it assigns are derived from content, so review the results for accuracy. It
has no access-control role.

---

- Automatically tag content.
- Assign taxonomy terms by rule.
- Configure auto-tagging actions.
- Enable a tagging submodule/plugin.
- Use keyword matching to tag.
- Depend on core Taxonomy.
- Automate content categorization.
- Avoid manual tagging.
- Write taxonomy references onto content.
- Choose the tagging plugin.
- Target specific vocabularies.
- Review auto-tag accuracy.
- Have no access-control role.
- Tag on content save.
- Provide the tagging core.
- Match text to terms.
- Classify content automatically.
- Configure tagging rules.
- Extend with custom plugins.
- Categorize at scale.
