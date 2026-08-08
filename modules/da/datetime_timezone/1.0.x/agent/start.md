<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Datetime Timezone (datetime_timezone) — agent index

A date **field type + widget** that store a user-chosen **timezone** with the value.
Version **1.0.0**. Core `^10.1 || ^11`. Depends on core `datetime`.
Three classes; no routes, permissions or config page.

**Why:** core stores datetimes in UTC and displays them in the site/viewer zone — correct for a
timestamp, wrong when the timezone is part of the meaning (a local event time). This makes the
timezone data the editor selects, not a display preference.

**Separate field type, not a setting on core's** — so **no in-place upgrade** from an existing
`datetime` field; adopting for existing content is add-a-field-and-migrate. Decide before content
exists. (Same caveat shape as `phone_label`.)