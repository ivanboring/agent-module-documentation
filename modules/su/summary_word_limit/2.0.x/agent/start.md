<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Summary Word Limit (summary_word_limit) — agent index

Maximum **word count** on the summary of `text_with_summary` fields.
Version **2.0.3**. Core `^10 || ^11`. No dependencies outside core.

Configured as a **third-party setting on the field**, not globally: edit the field, tick
**Summary input**, set **Summary word limit count**. Empty = no limit, so enabling the module
alone changes nothing.

Enforced by a **validation constraint** (`SummaryWordLimit` + `SummaryWordLimitValidator`), so it
applies to the node form **and** REST, JSON:API, migrations and programmatic saves — not just the
form.

Two classes; no routes, permissions or config page.