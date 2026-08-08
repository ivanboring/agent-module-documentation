<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Date Point defines a date point data type.

---

Date Point defines a **date-point** data/field type — a field for a point in time — with
`date_point_time_machine` and `dp_clock_mock` submodules (the mock/time-machine pieces support testing or
shifting "now"). It is in the Fields package, core 11.3+.

Use it where you need a date-point field type. It is a fields/developer feature providing a data type; it
stores date values and has no content or access role. Note the clock-mock/time-machine submodules are for
testing/dev — don't enable time-mocking on production. Add the date-point field to a bundle.

---

- Define a date-point field type.
- Store a point in time.
- Provide time-machine/clock-mock submodules.
- Support testing/shifting now.
- Serve core 11.3+.
- Provide a data type.
- Store date values.
- Keep time-mocking off production.
- Have no content/access role.
- Add the field to a bundle.
- Handle date points.
- Store dates.
- Configure the field.
- Provide the type.
- Add date fields.
- Handle the data type.
- Store time points.
- Configure dates.
- Provide date points.
- Add a date-point field.
