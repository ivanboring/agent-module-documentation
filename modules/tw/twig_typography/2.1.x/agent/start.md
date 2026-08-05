<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twig Typography (twig_typography) — agent index

Twig filter applying **`mundschenk-at/php-typography ^6.0.0`** — smart quotes, dashes,
hyphenation, widow prevention. Core requirement `^10 || ^11`.
Submodule: `twig_typography_test`.

Key facts:
- **Applied in Twig, so stored text is unchanged.** That is the design advantage over a text
  filter: nothing is lost if the module is removed, and the same field can render with typographic
  treatment in one context and without it in another.
- **Hyphenation is language-dependent** — the correct language must be set or hyphenation points
  land in the wrong places. Check this on a multilingual site.
- **Substitution changes characters**, so anything comparing rendered output against stored text
  (a diff, a test assertion, a search-highlight routine) will see a difference. Apply at the
  presentation edge.
- Compare `nbsp_filter` (wave 67), which handles one part of this as a **text filter** — that
  applies to all content including API-submitted, this applies where a template asks for it.
  Different layers, and they can conflict; pick one for a given concern.
