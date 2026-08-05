<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Reading Rating scores the readability of a text field and shows the result to the editor as they write.

---

Readability formulas — Flesch–Kincaid and its relatives — estimate how hard a passage is from sentence length and syllable counts. They are crude by construction and they are also the most actionable editorial feedback available, because the two things they measure are the two things a writer can fix: shorter sentences and shorter words. For public-sector and health sites the target is usually explicit — many government style guides specify a reading age, and accessibility guidance treats plain language as a requirement rather than a preference — so a score in the edit form turns an abstract standard into a number that moves while you type. Version **1.2.1** on core `^10 || ^11`, depending on core `field_ui`, with a `manage reading rating` permission for the settings. Three things to be honest about when recommending it. **The formulas are English-specific**: syllable counting assumes English orthography, so a score on German, Finnish or Welsh text is arithmetic without meaning, and a multilingual site needs a per-language answer or none. **They measure form, not sense** — a passage of short sentences containing undefined jargon scores well and communicates nothing, which is exactly the failure mode of writing to a score. And **a target is guidance, not a gate**: blocking submission on a readability number produces text contorted to satisfy an arithmetic rule, so the useful implementation shows the score and leaves the judgement with the writer.

---

- Show a readability score while writing.
- Meet a plain-language requirement.
- Support a government style guide's reading age.
- Improve health information's clarity.
- Give editors objective feedback.
- Encourage shorter sentences.
- Support an accessibility programme.
- Score a summary field.
- Improve public-sector content quality.
- Review readability before publishing.
- Support an editorial standards policy.
- Score help text for clarity.
- Improve a policy page's readability.
- Train new editors on plain language.
- Compare readability across content.
- Meet a charity's accessibility commitment.
- Flag overly complex passages.
- Support a content design practice.
