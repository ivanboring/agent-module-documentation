<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Date Range Simplify provides a field formatter that renders a date range more concisely, collapsing redundant parts shared between the start and end dates.

---

Date Range Simplify provides a field formatter for core Datetime Range fields that renders a range
more concisely by collapsing the parts the start and end dates share. Rather than printing, say,
"1 June 2026 – 30 June 2026" in full, a simplified formatter can render "1–30 June 2026" (and similar
reductions when the month or year is shared), producing cleaner, human-friendly range output.

Use it wherever date ranges are displayed — events, opening times, availability — and the default
verbose formatter looks repetitive. It depends on core `datetime` and is a pure display/formatter
module: it changes how a daterange field is rendered, not its stored value or access. Select the
formatter on the field's display settings for the relevant view mode.

---

- Render a date range more concisely.
- Collapse shared parts of start/end dates.
- Show '1–30 June 2026' instead of full dates.
- Format event date ranges cleanly.
- Simplify opening-times display.
- Provide a daterange field formatter.
- Depend on core datetime.
- Select the formatter per view mode.
- Produce human-friendly range output.
- Reduce repetition in range display.
- Format availability periods.
- Change display without altering stored value.
- Apply to Datetime Range fields.
- Collapse a shared month or year.
- Improve readability of ranges.
- Configure formatter display settings.
- Render start-end concisely.
- Use on event content types.
- Avoid verbose default range output.
- Keep it purely presentational.
