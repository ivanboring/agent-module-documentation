<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Date Group is a formatter for date range fields that collapses the repeated parts of a start and end date into one readable string.

---

Core renders a date range as two formatted dates with a separator, which is correct and unreadable: "12 March 2026 09:00 – 12 March 2026 17:00" repeats the date to say the event is on one day, and "12 March 2026 – 15 March 2026" repeats the month and year to say it spans four days in the same month. Every publication has a house style for this — "12 March 2026, 09:00–17:00", "12–15 March 2026", "28 March – 2 April 2026" — and it exists because a reader parses the collapsed form instantly and the expanded one word by word. Doing it in Drupal without a formatter means a preprocess function comparing the two dates piece by piece, written per site and usually handling the same-day case and forgetting the same-month one. Version **8.x-1.0-beta4** — a **beta** — on `^8` through `^11`, depending on core `datetime_range`. Three things determine whether the output is right. **The comparison has to happen in the display timezone**, not UTC, or an event from 23:00 to 01:00 is "the same day" in storage and two days to the reader. **All-day events are a distinct case** — a range with no meaningful time should not render "00:00–00:00", and whether the field can express all-day at all is a modelling question the formatter cannot answer. And **the rules are language-specific**: the collapsed forms above are English conventions, and a multilingual site needs the pattern per language rather than one string with substitutions, which is the point at which a formatter's configurability either covers the requirement or does not.

---

- Render an event's date range readably.
- Collapse a same-day date range.
- Show "12–15 March 2026".
- Format an opening hours range.
- Render a conference's dates.
- Show a course's start and end.
- Format an exhibition's run.
- Render a booking window.
- Show a campaign's period.
- Format a same-month range compactly.
- Render a multi-day event's dates.
- Show a session's times on one day.
- Format a festival's dates.
- Render a membership period.
- Show a job posting's window.
- Format a report's coverage period.
- Render a tour's dates.
- Show a listing's date range tidily.
