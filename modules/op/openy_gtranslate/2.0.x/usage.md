<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Open Y Google Translate provides a block that places the Google Translate widget on a site, as packaged for the Open Y / YMCA Website Services distribution.

---

The Google Translate widget is the pragmatic answer for organisations that must offer many languages and cannot fund translating any of them. For a YMCA or a similar community organisation serving a multilingual population, the alternative to machine translation in the browser is usually no translation at all, and a rough translation of opening hours and programme information is worth more than an English-only page.

The module is a single block plugin, `Plugin/Block/OpenYGTranslateBlock`, placed through normal block layout with the usual visibility conditions — so it can be shown in a header region site-wide, or restricted to the pages where it matters.

Three things to be clear about, because they are true of the widget rather than of this module.

**Machine translation is not site translation.** Nothing is reviewed, terminology is not controlled, and the translated page is not indexed as a translation. If a page carries legal, medical or safety information, an unreviewed rendering of it is a real risk, and those pages deserve human translation regardless.

**It is a third-party script.** The widget loads from Google and sends page content there; on an EU-facing site that belongs in the privacy notice and behind consent, which is what a CMP like Usercentrics or the Consent Mode module exists to arrange.

**Drupal's own multilingual system is unaffected** — this is a display-layer overlay, not content translation, and the two can coexist: real translations where they matter, the widget as a fallback elsewhere.

---

- Offer machine translation on a community site.
- Serve a multilingual population without a translation budget.
- Place a translate widget in the header.
- Show the widget only on selected pages.
- Provide a fallback where real translations are absent.
- Translate programme and opening-hours information roughly.
- Combine with real translations for key pages.
- Restrict the widget by block visibility conditions.
- Gate the widget behind cookie consent.
- Document the third-party script in a privacy notice.
- Identify pages that need human translation instead.
- Add translation to an Open Y site quickly.
- Understand why translated pages are not indexed.
- Audit which pages rely on machine translation.
- Measure how much traffic uses the widget.
- Decide which pages must not rely on it.
