<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DateTime Range Until Now adds an "Until now" option to core's date range field, for periods that started and have not ended.

---

A date range with a required end date cannot express the most common state of anything ongoing. A job that started in 2019 and continues. A course still running. A project underway. A membership that has not lapsed. An exhibition still open. The workarounds are all bad in the same way: leaving the end date empty makes "ongoing" indistinguishable from "we did not fill this in"; putting a far-future date in makes a listing say the role ends in 2099 and breaks any sort by end date; and a separate "current" checkbox creates two fields that can disagree, so a record can be both current and ended and nothing prevents it. An explicit "until now" is a third state in the field itself, which is what the data actually has. Version **1.0.0** on `^9 || ^10 || ^11`, depending on core `datetime_range`. Two things follow from the semantics. **"Now" is evaluated at render time, not at save**, so a field marked ongoing is a live statement — which is right for a CV or a project listing and needs the render cache to expire, or a page says "to present" long after someone edited it to add an end date. And **sorting and filtering need a rule**: an ongoing period has no end value to compare, so a view sorted by end date has to decide whether ongoing records sort first, last or by start date, and a filter for "ended before 2024" has to decide whether they match at all.

---

- Show a role as ongoing on a CV.
- Mark a project as still running.
- Express a current membership.
- Show an exhibition still open.
- Record an employment period to present.
- Avoid a far-future placeholder date.
- Distinguish ongoing from unfilled.
- Show a course still in progress.
- Record a continuing appointment.
- Display "2019 – present".
- Mark a campaign as active.
- Record an open-ended contract.
- Show a service still offered.
- Express an unended tenure.
- Record a continuing partnership.
- Show a subscription still active.
- Avoid a separate current checkbox.
- Model an open-ended period properly.
