<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Text Summary Formatter displays only the summary part of a text-with-summary field, and nothing when the summary is empty.

---

Core's text-with-summary field has three formatters and none of them is this one. "Default" shows the full body, "Summary or trimmed" shows the summary and falls back to a trimmed body when there is none, and "Trimmed" always trims. The gap is the case where a summary should be shown **only when an editor wrote one** — a homepage promo, a card in a listing, a related-items panel — because an automatic trim of the first two hundred characters of body text produces a sentence cut mid-clause, which reads as neglect. This formatter makes the presence of a summary the editorial signal: written, it appears; not written, the element is empty and the design can respond. Version **8.x-1.5** on `^10 || ^11`, depending on core `text`. The project name carries a typo — the project is **`text_summary_formater`** with one `t`, while the module it ships is **`text_summary_formatter`** spelled correctly — so `composer require drupal/text_summary_formatter` fails and `drush en text_summary_formater` fails, each for the opposite reason. Worth checking the design consequence too: a card that renders nothing where a summary was expected needs a layout that tolerates it, so decide whether an empty summary means an omitted element, a hidden card, or a different fallback chosen deliberately rather than by a trim.

---

- Show only editor-written summaries.
- Avoid mid-sentence trimmed text.
- Render a card's promo text.
- Show a summary on a listing page.
- Leave a teaser empty without a summary.
- Make summary presence an editorial signal.
- Improve homepage card quality.
- Avoid automatic excerpt truncation.
- Show a curated excerpt only.
- Render a related-items panel.
- Support a design that hides empty cards.
- Show a summary in a search result.
- Present a deliberate abstract.
- Avoid awkward truncation in a newsletter.
- Show a summary in an RSS item.
- Support an editorial excerpt workflow.
- Render a summary in a tooltip.
- Display an abstract on a publication.
