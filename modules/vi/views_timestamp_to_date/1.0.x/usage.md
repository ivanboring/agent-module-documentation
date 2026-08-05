<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Timestamp to Date lets a field stored as a Unix timestamp be filtered and grouped as a date, without changing how it is stored.

---

Plenty of data arrives as integers: an imported `created` value, a third-party system's epoch field, a custom entity property defined as a timestamp. Views will treat such a field as a number, which means filtering "everything from March" becomes an arithmetic exercise in epoch seconds and grouping by month is not available at all. The usual workarounds are a computed field, a database view, or a custom Views handler written per project. This module supplies the conversion as a Views plugin so the field can be filtered with date semantics — ranges, relative offsets, granularity — while the stored value stays an integer. It depends on core `views` alone, with `config/schema` for its settings, on core `^10 || ^11`. The thing to be careful about with any timestamp-to-date conversion is **timezone**: a Unix timestamp is an absolute instant with no timezone, and "everything from March" depends on whose March — so verify which timezone the conversion applies, particularly on a site whose users span several, and be consistent with how the same value is displayed.

---

- Filter a timestamp field by date range.
- Group imported records by month.
- Filter an epoch field without arithmetic.
- Use relative date filters on a timestamp.
- Filter a third-party system's date field.
- Avoid a computed field for filtering.
- Report on imported data by period.
- Filter a custom entity's timestamp property.
- Build a date-based dashboard.
- Group log entries by day.
- Filter legacy data by date.
- Use exposed date filters on a timestamp.
- Avoid a custom Views handler.
- Report by quarter or year.
- Filter migrated content by original date.
- Keep storage unchanged.
- Support a data-analysis view.
- Filter integration records by date.
