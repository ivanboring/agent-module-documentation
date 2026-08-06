<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Asymmetric Menu Trees allows a menu to have a different structure in each language, rather than one tree with translated labels.

---

Drupal's multilingual model assumes a menu is one structure whose labels are translated, and that assumption holds only where the language versions of a site are translations of each other. Real multilingual sites frequently are not. A university's English site serves international applicants and its national-language site serves domestic ones, and the sections they need differ. A government site's minority-language version covers a subset of services because only that subset is available in that language. A company's regional sites carry different products. In each case forcing one tree means either showing links to content that does not exist in that language, or omitting sections the other language needs — and the usual workaround is a separate menu per language with a language condition on each block, which works and duplicates every shared item. Letting the tree differ where it must and stay shared where it can is the right shape. Version **2.0.0** on `^8` through `^11`. Two things follow. **A link to an untranslated page is the failure this exists to prevent**, so the module's value is realised only if the structures are actually maintained per language — an asymmetric menu that nobody has curated is a symmetric menu with extra configuration. And **navigation is part of what a site says it offers**: a section present in one language and absent in another is a statement about who the site is for, so the divergence is an editorial and sometimes a policy decision rather than a technical one, and it needs an owner in each language rather than being left to whoever last edited the menu.

---

- Give each language its own menu structure.
- Show different sections per language.
- Serve international and domestic audiences differently.
- Omit untranslated sections from a menu.
- Support a minority-language subset.
- Avoid links to untranslated pages.
- Vary navigation by market.
- Support a university's language versions.
- Give a regional site its own structure.
- Avoid duplicate menus per language.
- Support a government's language policy.
- Vary a product menu by region.
- Keep shared items in one place.
- Support an asymmetric site structure.
- Show language-specific services.
- Vary a footer menu per language.
- Support a bilingual site with different content.
- Curate navigation per language.
