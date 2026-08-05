<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Reading Rating (reading_rating) — agent index

Scores the **readability** of a text field and shows the result to the editor. Depends on core
`field_ui`. `manage reading rating` gates the settings. Version **1.2.1**.
Core requirement `^10 || ^11`.

**Why crude formulas are still useful:** Flesch–Kincaid and relatives estimate difficulty from
sentence length and syllable counts. Crude by construction — and the most **actionable** editorial
feedback available, because the two things they measure are the two things a writer can fix.
For public-sector and health sites the target is often explicit (a specified reading age; plain
language treated as an accessibility requirement), and a live score turns an abstract standard into
a number that moves while you type.

**Three things to be honest about:**
1. **The formulas are English-specific.** Syllable counting assumes English orthography — a score on
   German, Finnish or Welsh text is arithmetic without meaning. A multilingual site needs a
   per-language answer or none.
2. **They measure form, not sense.** Short sentences full of undefined jargon score well and
   communicate nothing — the exact failure mode of writing to a score.
3. **A target is guidance, not a gate.** Blocking submission on a readability number produces text
   contorted to satisfy arithmetic. Show the score; leave the judgement with the writer.
