<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Date Group (date_group) — agent index

Formatter for **date range** fields that **collapses the repeated parts** of a start and end date.
Depends on core `datetime_range`. Version **8.x-1.0-beta4** — **beta**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**What core does:** two formatted dates and a separator — correct and unreadable.
*"12 March 2026 09:00 – 12 March 2026 17:00"* repeats the date to say the event is on one day;
*"12 March 2026 – 15 March 2026"* repeats month and year to say it spans four days in one month.
Every publication has a house style for this because **a reader parses the collapsed form instantly**
and the expanded one word by word.

**Three things determine whether the output is right:**
1. **Compare in the display timezone, not UTC.** An event 23:00–01:00 is "the same day" in storage
   and **two days** to the reader.
2. **All-day events are a distinct case** — a range with no meaningful time must not render
   "00:00–00:00", and whether the field can express all-day is a **modelling** question the
   formatter cannot answer.
3. **The rules are language-specific.** "12–15 March 2026" is an English convention; a multilingual
   site needs the **pattern per language**, not one string with substitutions. That is where a
   formatter's configurability either covers the requirement or does not.
