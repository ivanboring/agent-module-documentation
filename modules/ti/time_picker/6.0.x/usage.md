<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Time and Time Range Picker Field provides field types for a time of day and for a range of times, without a date attached.

---

Core's datetime field can store a time and always carries a date with it, which is right for an event and wrong for the many things that are times without being dates. Opening hours are 09:00 to 17:00 on Mondays generally, not on one particular Monday. A class runs at 14:30 every week. A booking slot, a shift pattern, a broadcast schedule, a delivery window — each is a time that recurs, and forcing a date onto it means either an arbitrary date nobody should see or a field whose value has to be interpreted rather than read. A dedicated time field stores what the data actually is. Version **6.0.0** on `^8` through `^11`, depending on core `datetime`. Three things follow from the semantics. **A time without a date has no timezone** — 09:00 is 09:00 wherever the reader is, which is exactly right for opening hours and exactly wrong for anything a visitor in another country needs to convert, so establish which case the field is for. **A range can cross midnight** — a shift from 22:00 to 06:00 is normal and a naive comparison says the end is before the start, so check whether the field permits it and how anything sorting or filtering handles it. And **a time is not a schedule**: this stores when, not on which days, so opening hours need a day dimension alongside it, which is a content-modelling decision rather than something the field supplies.

---

- Store opening hours as times.
- Record a weekly class time.
- Store a booking slot.
- Record a shift pattern's hours.
- Store a broadcast schedule time.
- Record a delivery window.
- Store a service's availability hours.
- Record a recurring meeting time.
- Store a kitchen's serving hours.
- Record a facility's access times.
- Store a time without a date.
- Record a session's start and end.
- Store a tour departure time.
- Record a clinic's consultation hours.
- Store a time range for a rota.
- Record a market's trading times.
- Store a helpline's hours.
- Record a timetable entry.
