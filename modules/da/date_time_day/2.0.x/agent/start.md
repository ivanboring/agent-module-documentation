<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Date time day (date_time_day) — agent index

Field type storing **one date plus a start and end time on that same day**. Depends on core
`datetime`. Version **2.0.2**. Core requirement `^10 || ^11`.

**Why not `datetime_range`:** a range stores two *independent* datetimes, so nothing stops an
editor putting the end on a different day, the widget asks for the date twice, and any "what is on
this day" query must reason about both ends. This field type **encodes the constraint in the
data**: the widget asks for the date once, validation is meaningful, and date-filtered views need
not handle a range straddling midnight.

**Two things to settle before choosing it:**
1. **Anything crossing midnight does not fit.** An overnight shift or a session running to 01:00
   needs `datetime_range` instead — and swapping field types once content exists is expensive.
2. **Timezones.** A time on a day is only unambiguous once you know whose day it is. Confirm
   whether the field stores UTC and renders in site or user timezone, especially for an
   international audience.

Fits: opening hours, class timetables, appointment slots, conference sessions, shift rotas.
