<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GTranslate (g_translate) — agent index

Places a **Google Translate widget** on the site — machine translation of pages into many
languages, with **no content translated in Drupal**. Depends on core `block`. Configure at
`/admin/config/regional/g-translate` behind `g_translate settings`. Version **1.0.1**.
Core requirement `^9.5 || ^10 || ^11 || ^12`.

**It is frequently proposed as an alternative to Drupal's translation system. It is not one.**
Four things to say plainly:
1. **The translation is not yours.** Nothing is stored, reviewed or correctable. A mistranslated
   legal statement, medical instruction, price or safety notice is published in your name and can
   only be fixed by rewording the source.
2. **It is not indexed.** Search engines index the original, so there is **no multilingual search
   visibility** — usually a main reason for wanting other languages at all.
3. **It is a third-party script** that sees every page a visitor reads — a consent and
   data-protection question.
4. **It misses what matters most**: text in images and PDFs, form validation messages, and anything
   rendered after page load.

**Where it is genuinely right:** a small organisation with occasional non-native visitors, an
internal tool, or a site where the alternative is nothing at all. Use it as a convenience layer on
a monolingual site; use core's translation system for languages the organisation actually commits
to.
