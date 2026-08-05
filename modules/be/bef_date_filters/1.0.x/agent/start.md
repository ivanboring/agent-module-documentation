<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BEF Date filters (bef_date_filters) — agent index

Date-aware widgets for **Better Exposed Filters**. Depends on `better_exposed_filters`.
Core requirement `^10 || ^11`.

Key facts:
- Fills a real gap: BEF's widget set is oriented at lists and text, so a plain exposed **date**
  filter renders as a text input the visitor must type a parseable value into — a reliable source
  of empty result sets.
- Configured per exposed filter in the Views UI, alongside BEF's other widget settings.
- **Two caching points for any exposed filter, sharper with dates:**
  - exposed input varies the result set, so the display needs the right cache contexts;
  - a range including "today" is **time-dependent** — a listing cached for a day shows yesterday's
    idea of "this week". Set `max-age` accordingly.
- Surface: `src/Plugin/`, `config/schema`. No routes or permissions.
