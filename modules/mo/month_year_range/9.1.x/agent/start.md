<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Month Year Range (month_year_range) — agent index

Date range field at **month + year** granularity. Builds on core `datetime_range`.
Core requirement `^10 || ^11`. Version `9.1.1` tracks the Drupal major, not semver.

Key facts:
- **Why not a full date range:** storing "March 2019" as `2019-03-01` asserts a precision nobody
  gave, and that invented day then leaks into displays and sorts. Two text fields lose validation
  and sortability; a year-only field loses information.
- **Two things to establish when using it:**
  - **Open-ended ranges** — "March 2019 – present" is the common case for a current role. Confirm
    how it is represented and that formatters handle it, rather than relying on a null.
  - **Sorting and filtering** — a month-year ordered as a string behaves differently from one
    ordered as a date. Check a view before relying on it.
- Typical fit: CV/staff profiles, exhibitions, projects, grants, contracts.
