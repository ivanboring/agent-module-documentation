<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Time and Time Range Picker Field (time_picker) — agent index

Field types for a **time of day** and a **range of times**, with no date attached. Depends on core
`datetime`. Version **6.0.0**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why core's datetime is the wrong shape:** it always carries a date. Opening hours are 09:00–17:00
on Mondays **generally**, not on one particular Monday. A class runs at 14:30 **every** week.
Forcing a date on means either an arbitrary date nobody should see, or a value that must be
**interpreted rather than read**.

**Three things follow from the semantics:**
1. **A time without a date has no timezone.** 09:00 is 09:00 wherever the reader is — exactly right
   for opening hours, exactly wrong for anything a visitor abroad must convert. Establish which case
   the field is for.
2. **A range can cross midnight.** A shift from 22:00 to 06:00 is normal, and a naive comparison
   says the end precedes the start. Check whether the field permits it and how sorting and filtering
   handle it.
3. **A time is not a schedule.** This stores *when*, not *on which days* — opening hours need a day
   dimension alongside, which is a **content-modelling** decision, not something the field supplies.

Compare `date_time_day` (wave 72), which is date **plus** start/end time on that day.
