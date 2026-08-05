<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# NBSP Filter (nbsp_filter) — agent index

Text format **filter** inserting and removing non-breaking spaces. Core-only dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`. Configured through the text format UI
(`configure: filter.admin_overview`).

Key facts:
- **A filter is the right layer**, as with `rel_attributes_filter` (wave 66): it applies at render
  time to *all* content — migrated and API-submitted included — where a CKEditor plugin only
  affects what is typed after installation.
- **Filter order matters.** Running before or after markup-restricting filters changes what this
  sees; check its position in the format's filter list if results look wrong.
- **Search interaction to verify:** inserting non-breaking spaces changes the character sequence
  that search indexing and string comparison see. On a site with strict matching, confirm that
  filtered output is not what gets indexed (normally it is not — indexing usually reads the raw
  field), and test a phrase search across an affected string.
- Genuine typographic need: French requires a non-breaking space before `; : ! ?`; many style
  guides forbid breaks between a number and its unit.
