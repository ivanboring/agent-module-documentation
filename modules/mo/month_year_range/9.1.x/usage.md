<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Month Year Range provides a date range field with **month and year only** — the granularity a CV entry, an exhibition run or a project period actually has.

---

"March 2019 – July 2022" is how people describe employment, study, projects and exhibitions, and storing it in a full date range forces an invented day: `2019-03-01` implies a precision nobody asserted, and it then shows up in displays and sorts as though it meant something. The alternatives are worse — two plain text fields lose sortability and validation entirely, and a year-only field loses real information. This field type keeps the granularity honest, building on core's `datetime_range`, and targets core `^10 || ^11`. The version number, **9.1.1**, tracks the Drupal major rather than semantic versioning, which is worth knowing when reading a composer constraint. Two things to establish when using it: what an **open-ended range** looks like, since "March 2019 – present" is the common case for a current role and needs an explicit representation rather than a null that formatters mishandle; and how it **sorts and filters**, since a month-year value ordered as a string behaves differently from one ordered as a date.

---

- Record an employment period on a CV.
- Store a project's start and end months.
- Record an exhibition run.
- Avoid inventing a day in a date.
- Show "March 2019 – July 2022" honestly.
- Sort a career history correctly.
- Record a course's term.
- Store a publication period.
- Handle an open-ended current role.
- Record a grant period.
- Filter by year in a view.
- Avoid two plain text fields.
- Keep granularity honest.
- Record a residency period.
- Support a staff profile content type.
- Store a contract period.
- Show a timeline of roles.
- Record a historical period.
