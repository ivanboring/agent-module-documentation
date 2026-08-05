<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Timestamp to Date (views_timestamp_to_date) — agent index

Views plugin letting a **Unix timestamp** field be filtered with date semantics. Depends on core
`views`. Core requirement `^10 || ^11`.

Key facts:
- **Storage is unchanged** — it is a Views-layer conversion, so nothing about the field or its
  data is altered and the plugin can be removed freely.
- **Timezone is the thing to verify.** A Unix timestamp is an absolute instant with no timezone;
  "everything from March" depends on whose March. Confirm which timezone the conversion applies,
  especially where users span several, and make it consistent with how the same value is
  *displayed* — a filter and a formatter disagreeing about timezone produces results that look
  wrong by a day.
- Fills a real Views gap: an integer-stored date is treated as a number, so range filtering is
  epoch arithmetic and date granularity grouping is unavailable.
- No routes or permissions; `src/Plugin/` plus `config/schema`.
