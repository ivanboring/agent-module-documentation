<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SEO analyzer (seo_analyzer) — agent index

Runs on-page **SEO checks** against a node and reports to the editor. Behind `access seo analyzer`.
Version **2.0.1**. **Core requirement `^11` — Drupal 11 only.**
Its description mentions "a given node or **canvas page**", suggesting awareness of Drupal's newer
page-building work — confirm against the site's actual content model.

**Why the category is worth having:** most on-page problems are **mechanical** — missing meta
description, unset alt attribute, over-long title, skipped heading level, no internal links pointing
at the page. Each is cheap to fix while writing and **expensive to find six months later across a
thousand pages**. Showing them in the edit form puts the fix next to the cause.

**Three things to say when recommending it:**
1. **On-page checks are the smallest part of ranking**, which is dominated by content quality, links
   and performance. A green page is not a page that ranks — the tool measures what is measurable.
2. **Advice ages faster than modules do.** Keyword density, exact-match phrases and meta keywords
   were once standard recommendations and are now neutral or harmful. **Check what the checks
   actually assert.**
3. **A checklist works better as guidance than as a gate.** Writing to satisfy a scoring rule
   produces text optimised for the rule — exactly what search engines have spent two decades
   learning to discount.
