<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Inline Formatter Field (inline_formatter_field) — agent index

Combines several fields into one rendered output via a **template**, as a display setting.
Submodules `inline_formatter_display` (entity view displays) and `inline_formatter_views_field`
(Views). Version **4.1.0**. Core requirement `^10 || ^11`.

**The problem:** fields that belong together in the output are separate in the data model — street
+ city + postcode as an address, amount + currency as a price, author + date as a byline, width +
height + unit as a dimension. Drupal renders each independently in its own wrapper, so the
alternatives are a template override, a computed field, or a field group with CSS fighting the
markup.

**Two things worth attaching:**
1. **Combined output needs its own empty-handling.** A template joining three fields with commas
   produces **stray punctuation** when one is empty — the commonest visible bug in this pattern.
   Decide what an absent value does *before* writing the template.
2. **Combining is presentation, not data.** The fields stay separate for **search indexing**,
   **JSON:API** and **Views filtering** — usually what is wanted, occasionally a surprise for
   someone expecting the combined string to be queryable.
