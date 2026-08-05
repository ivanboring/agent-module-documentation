<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Time Field provides a **time-only** field type — the hours and minutes without a date — for opening hours, session start times, daily schedules and anything where the date is irrelevant.

---

Drupal's datetime field always carries a date, and storing "09:00" as a datetime means inventing a date to attach it to, which then leaks into displays, sorting and timezone handling in ways nobody wants. A time-only field avoids that entirely, which is why this recurs on venue, education and healthcare sites. The module supplies the field type with a genuinely complete surface: `src/Element` for the form element, `src/Plugin` for the type, widget and formatter, `src/Utility` for the conversion helpers, `src/Feeds` for import support, plus Views integration and `config/schema`. Formatting covers 12- and 24-hour display, optional seconds, min/max constraints, and timezone display. It depends on core `field` alone, with core `^10 || ^11`. The design question worth raising when it is used for opening hours specifically is what "17:00" means across timezones — a time without a date has no unambiguous instant, so the display timezone setting matters and comparing times across zones is not meaningful. For genuine opening-hours modelling with exceptions and holidays, a dedicated module is usually a better fit; this is the right tool when a simple time value is what is actually needed.

---

- Store opening hours as times.
- Record a class start time.
- Capture an appointment slot.
- Show times in 12- or 24-hour format.
- Constrain a time to a valid range.
- Include seconds where precision matters.
- Sort a view by time of day.
- Import times through Feeds.
- Record a daily schedule.
- Show a timezone alongside a time.
- Avoid inventing a date for a time value.
- Display session times on an event page.
- Record a shift pattern.
- Filter a listing by time.
- Capture a delivery window.
- Store a broadcast time.
- Validate a time against a minimum.
- Show times consistently across a site.
