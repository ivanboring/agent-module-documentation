<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cyrillic to Latin (cyrillic_to_latin) — agent index

Converts **Serbian** text from **Cyrillic to Latin** at display time. Depends on core `locale`.
Configure at `/admin/config/…/cyrillic_to_latin`. Version **2.0.3**.
Core requirement `^10 || ^11`.

**Serbian is the clearest living case of digraphia** — the same language, officially written in two
alphabets, with a **one-to-one mapping** that makes conversion deterministic rather than a
translation. Cyrillic is constitutionally official and predominates institutionally; Latin
predominates online. **Both are correct Serbian**, so picking one inconveniences half the audience
and maintaining both stores and edits everything twice for no editorial gain.

**Three things worth attaching:**
1. **The direction matters.** Cyrillic → Latin is **unambiguous**; Latin → Cyrillic is **not**,
   because Latin digraphs (`nj`, `lj`, `dž`) are single Cyrillic letters — a word like *nadživeti*
   contains a `dž` that is not the letter. **One direction is safe to automate; the other needs a
   dictionary.**
2. **Proper nouns and foreign words should usually not be converted** — a brand name or URL written
   in Latin inside Cyrillic text is meant to stay.
3. **The converted variant is a rendering, not a page.** It should not create a **second indexable
   URL** for the same content without `hreflang` or a canonical, or the site competes with itself in
   search results.
