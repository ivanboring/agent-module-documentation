<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Taxonomy Parent ID from Term adds a contextual filter that resolves a term to its parent's id.

---

Taxonomy hierarchies are used for navigation constantly — a section with subsections, a product category with sub-categories, a region with its localities — and Views can filter by a term. What it cannot easily do is take the term you are on and use its *parent*, which is what "show me the siblings of this term" and "show me the section this page belongs to" both require.

This module supplies that as a contextual filter, so a View given a term id can act on the parent instead. The typical result is a sidebar that shows the other pages in the same section, driven entirely from the hierarchy rather than from a hand-maintained menu.

Two things worth planning. **A top-level term has no parent**, so the View needs a defined behaviour for that case — usually a fallback argument or hiding the block — and leaving it undefined produces an empty listing on exactly the pages where a section navigation is most visible. And **hierarchies with multiple parents** exist in Drupal's taxonomy model; if the vocabulary allows them, decide which parent the filter should use before relying on it.

The core requirement is `^10.3 || ^11.0`, so this is current-Drupal only.

---

- Show siblings of the current term.
- Build section navigation from a hierarchy.
- List other pages in the same category.
- Filter a View by a term's parent.
- Drive a sidebar from taxonomy structure.
- Avoid a hand-maintained section menu.
- Handle a top-level term with no parent.
- Define fallback behaviour for the filter.
- Avoid an empty listing on section pages.
- Decide which parent to use in a multi-parent vocabulary.
- Show a region's other localities.
- List sibling product categories.
- Combine with other contextual filters.
- Audit vocabularies for multiple parents.
- Plan hierarchy-driven navigation.