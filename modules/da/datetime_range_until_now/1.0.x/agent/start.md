<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DateTime Range Until Now (datetime_range_until_now) — agent index

Adds an **"Until now"** option to core's date range field. Depends on core `datetime_range`.
Version **1.0.0**. Core requirement `^9 || ^10 || ^11`.

**Why the workarounds are all bad in the same way:**
- **empty end date** — "ongoing" becomes indistinguishable from "we did not fill this in";
- **far-future date** — a listing says the role ends in 2099 and sorting by end date breaks;
- **a separate "current" checkbox** — two fields that can disagree, so a record can be both current
  and ended with nothing preventing it.

An explicit third state in the field is what the data actually has.

**Two things follow from the semantics:**
1. **"Now" is evaluated at render time, not at save.** A field marked ongoing is a **live
   statement** — right for a CV or project listing, and the **render cache must expire**, or a page
   says "to present" long after someone added an end date.
2. **Sorting and filtering need a rule.** An ongoing period has **no end value to compare** — a view
   sorted by end date must decide whether ongoing records sort first, last or by start date, and a
   filter for "ended before 2024" must decide whether they match at all.
