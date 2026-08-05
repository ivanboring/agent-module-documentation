<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Taxonomy Term Glossary turns a taxonomy vocabulary into a glossary: matching words in rendered content are highlighted automatically and the term's description is shown to the reader in a dialog or tooltip.

---

The core idea is a text filter that scans rendered content for terms from configured vocabularies and wraps the matches, plus a small JavaScript layer that fetches the definition on demand from three JSON endpoints — search by letter, search by term text, and fetch by term id. Presentation is pluggable: the module defines its own `TermGlossaryHandler` plugin type (manager, base class, interface and annotation all present), and three submodules supply alternatives — **term_glossary_abbr** renders matches as HTML `<abbr>` elements, **term_glossary_tippy** uses Tippy.js tooltips, and **term_glossary_per_node** allows per-node control over whether glossary processing runs. Dependencies are core `taxonomy` and `text` plus `jquery_ui_dialog` for the default dialog presentation, and configuration lives at `/admin/config/glossary`. Note that the JSON endpoints are gated only by `access content`, i.e. anonymous on a typical site, and that one of them does not restrict itself to the configured vocabularies or check per-term access — this module's local security notes cover that in detail, and it is the main thing to check before enabling it on a site whose taxonomy is not entirely public.

---

- Highlight glossary terms automatically in body text.
- Show a definition in a dialog when a reader clicks a term.
- Present acronyms as `<abbr>` elements with expansions.
- Use Tippy.js tooltips instead of a modal dialog.
- Build an A-Z glossary index page.
- Let editors maintain definitions as taxonomy terms.
- Disable glossary processing on selected nodes.
- Search glossary terms from the front end.
- Explain jargon to a general audience.
- Keep definitions in one place across a whole site.
- Add a medical or legal terms glossary.
- Support multilingual glossaries by language.
- Choose which vocabularies act as glossaries.
- Render definitions through a chosen view mode.
- Extend presentation with a custom handler plugin.
- Improve accessibility of abbreviations.
- Avoid manually linking every jargon term.
- Give a documentation site inline definitions.
- Reuse an existing taxonomy as a glossary.
