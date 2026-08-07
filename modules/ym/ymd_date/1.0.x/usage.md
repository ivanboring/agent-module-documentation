<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
YMD Date stores dates that core's date field cannot: before 1970, and with the month or day unknown.

---

Core's date handling assumes a complete, modern date. Two things break that, and both are ordinary in archives, genealogy, museum catalogues and historical research.

The first is **range**: implementations built on Unix timestamps struggle below 1970, which is an absurd limitation for anything historical and a recurring source of silently wrong data.

The second, and more interesting, is **precision**. "1847" is a date. So is "March 1912". Forcing them into a complete date means inventing a month and a day, and an invented 1 January is indistinguishable afterwards from a real one — the fabrication is permanent and invisible. A field with optional month and day records what is actually known, which is the difference between a catalogue that can be trusted and one that cannot.

**Two consequences follow from partial dates and both need a decision.** Sorting and range filtering have to define what a partial date means — does 1847 sort before, after, or within 1847-06-15, and does a filter for "1840 to 1850" include a record dated only "19th century"? And **display should preserve the precision**, because rendering 1847 as "1 January 1847" reintroduces exactly the fabrication the field type exists to avoid.

Worth pairing with `wisski_date_field_extractor` (wave 84) as the two approaches to the same problem: this stores partial precision explicitly, that derives structure from a free-text expression.

---

- Store a date before 1970.
- Record a year with no month.
- Record a month with no day.
- Catalogue an archival item.
- Avoid inventing a day for an unknown date.
- Keep uncertainty visible in the data.
- Sort records with partial dates.
- Define range filtering for partial dates.
- Display a date at its real precision.
- Avoid rendering 1847 as 1 January 1847.
- Support genealogy or museum cataloguing.
- Compare with a date-expression extractor.
- Migrate historical dates from a legacy system.
- Audit dates that were completed by guesswork.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
