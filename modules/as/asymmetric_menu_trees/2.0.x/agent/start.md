<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Asymmetric Menu Trees (asymmetric_menu_trees) — agent index

Lets a menu have a **different structure in each language**, rather than one tree with translated
labels. Version **2.0.0**. Core requirement `^8 || ^9 || ^10 || ^11`.

**The assumption it breaks:** Drupal's multilingual model treats a menu as **one structure whose
labels are translated** — which holds only where the language versions are **translations of each
other**. Real multilingual sites frequently are not:
- a university's English site serves **international applicants** and its national-language site
  serves **domestic** ones;
- a government site's minority-language version covers a **subset of services**, because only that
  subset exists in that language;
- a company's regional sites carry **different products**.

The usual workaround — a separate menu per language with a language condition on each block — works
and **duplicates every shared item**.

**Two things follow:**
1. **A link to an untranslated page is the failure this exists to prevent**, so the value is
   realised only if the structures are **actually maintained per language**. An uncurated asymmetric
   menu is a symmetric menu with extra configuration.
2. **Navigation is part of what a site says it offers.** A section present in one language and absent
   in another is **a statement about who the site is for** — an editorial and sometimes a policy
   decision, needing **an owner in each language**.
