<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cyrillic to Latin converts Serbian text from Cyrillic to Latin script on the fly, so one set of content serves readers of both.

---

Serbian is the clearest living case of **digraphia**: the same language, officially written in two alphabets, with a one-to-one mapping between them that makes conversion deterministic rather than a translation. Readers have genuine preferences — Cyrillic is constitutionally the official script and predominates in institutional and older contexts, Latin predominates online and among younger readers — and both are correct Serbian, so a site that picks one is inconvenient to half its audience while a site that maintains both is storing and editing everything twice for no editorial gain. Converting at display time is the right answer precisely because the mapping is mechanical: nothing is lost, nothing needs reviewing, and the content stays single-sourced. Version **2.0.3** on core `^10 || ^11`, depending on core `locale`, configured at its own settings form. Three things worth attaching. **The direction matters** — Cyrillic to Latin is unambiguous, while Latin to Cyrillic is not, because Latin digraphs (`nj`, `lj`, `dž`) are single Cyrillic letters and a word like *nadživeti* contains `dž` that is not the letter, so one direction is safe to automate and the other needs a dictionary. **Proper nouns and foreign words should usually not be converted**, since a brand name or a URL written in Latin inside Cyrillic text is meant to stay as it is. And **the converted variant is a rendering, not a page**, so it should not produce a second indexable URL for the same content without `hreflang` or a canonical, or the site competes with itself in search results.

---

- Serve Serbian content in both scripts.
- Convert Cyrillic to Latin on the fly.
- Avoid maintaining content twice.
- Offer a script preference to readers.
- Support an institutional Serbian site.
- Serve younger readers in Latin.
- Keep content single-sourced.
- Add a script switcher.
- Support Serbian digraphia.
- Convert menu labels to Latin.
- Serve a Serbian diaspora audience.
- Avoid duplicate content in two scripts.
- Convert interface strings.
- Support a government site's script policy.
- Offer Latin for search engines.
- Convert taxonomy terms on display.
- Support a Serbian news site.
- Serve both scripts from one editorial workflow.
