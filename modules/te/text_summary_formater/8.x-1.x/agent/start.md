<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Text Summary Formatter (text_summary_formater) — agent index

Formatter showing **only the summary** of a text-with-summary field — empty when no summary was
written. Depends on core `text`. Version **8.x-1.5**. Core requirement `^10 || ^11`.

**Name mismatch — both spellings fail in one direction each:**
- the **project** is `text_summary_formater` (one `t`);
- the **module it ships** is `text_summary_formatter` (spelled correctly).
So `composer require drupal/text_summary_formatter` fails, and `drush en text_summary_formater`
fails.

**The gap in core.** Core's three formatters are "Default" (full body), "Summary or trimmed"
(summary, falling back to a trimmed body) and "Trimmed" (always trims). None covers *show a summary
**only** when an editor wrote one* — and an automatic 200-character trim cuts mid-clause, which
reads as neglect.

**Design consequence to settle:** a card rendering nothing where a summary was expected needs a
layout that tolerates it. Decide whether an empty summary means an omitted element, a hidden card,
or a deliberately chosen fallback.
