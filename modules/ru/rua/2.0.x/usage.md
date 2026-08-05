<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
RUA removes accents from Greek text rendered in uppercase, matching the Greek typographic rule that accented capitals are not written with their accent.

---

This is a small module encoding a real orthographic rule that non-Greek developers do not know exists. In modern Greek, a word written in lowercase carries a tonos on its stressed vowel — Ελλάδα — and the same word set in uppercase does not: ΕΛΛΑΔΑ, not ΕΛΛΆΔΑ. CSS `text-transform: uppercase` does not know that, so every heading, button and navigation item in a Greek site's uppercase style comes out with accents that a Greek reader sees immediately as wrong, in the way an English reader would notice a stray apostrophe. Browsers have improved — Firefox and others handle Greek uppercasing correctly when the element's language is declared — but coverage is inconsistent and depends on `lang` being right, which on a Drupal site it often is not for individual strings. This module handles it, version **2.0.2** on `^10 || ^11 || ^12`, reaching into a core major that does not exist yet. Two notes. It is packaged as `Javascript`, so the transformation happens **in the browser**, meaning it does not affect what is stored, what is indexed by search, or what is copied out of the page by a reader — the last of which is arguably a virtue. And the more durable fix, where it is available, is to declare `lang="el"` correctly and let the browser apply its own casing rules; this module is what covers the cases where that is not enough.

---

- Fix accented Greek capitals.
- Correct uppercase headings on a Greek site.
- Apply Greek typographic rules.
- Fix text-transform on Greek text.
- Correct uppercase navigation labels.
- Fix accented capitals in buttons.
- Meet a Greek editorial standard.
- Correct a Greek site's typography.
- Fix uppercase titles.
- Handle inconsistent browser casing.
- Support a Greek-language deployment.
- Correct uppercase menu items.
- Fix accents in an uppercase logo text.
- Apply orthographic rules automatically.
- Improve a Greek site's polish.
- Fix uppercase form labels.
- Correct accents in a banner.
- Support Greek localisation quality.
