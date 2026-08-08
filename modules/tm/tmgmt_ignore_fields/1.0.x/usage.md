<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
TMGMT Ignore Fields extends the Translation Management Tool so administrators can mark specific fields to be excluded from translation jobs.

---

When TMGMT builds a translation job it gathers the translatable fields of an entity and sends them to a translator. Some of those fields should not go: an internal reference code, a field that holds the same value in every language, a machine-oriented string, a field whose "translation" would only ever be a copy. Sending them wastes translator effort and word-count budget, and on a paid translation service that is real money.

This module adds the configuration to leave them out. An administrator names the fields to ignore, and TMGMT skips them when assembling jobs — so the job contains only what actually needs translating. It depends on `tmgmt` and `tmgmt_content` (the content-entity source), which is the pairing that produces the field lists it filters.

It is a focused efficiency tool rather than a workflow change: the translation process is unchanged, the set of fields in each job is smaller. The thing to verify after configuring it is that nothing genuinely translatable was excluded by an over-broad choice — an ignored field is silently absent from the job, so a mistake shows up as missing translations rather than an error.

---

- Exclude a field from translation jobs.
- Skip an internal reference field.
- Skip a language-neutral field.
- Reduce translator word count.
- Cut paid translation cost.
- Keep machine fields out of jobs.
- Configure ignored fields centrally.
- Stop copying untranslatable values.
- Trim a TMGMT job to what needs translating.
- Pair with tmgmt_content sources.
- Avoid wasting translator effort.
- Review that nothing translatable was excluded.
- Keep the translation workflow unchanged.
- Exclude a field across content types.
- Streamline large translation jobs.
- Prevent redundant translation of copies.
- Manage exclusions in one settings form.
- Audit ignored fields after config changes.
- Send only meaningful content to translators.
- Lower cost on a paid translation service.