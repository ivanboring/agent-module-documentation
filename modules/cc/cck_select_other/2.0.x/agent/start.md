<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Select Other (cck_select_other) — agent index

Widget for **list fields** offering the configured options plus an **"Other"** choice that reveals
a text field. Depends on core `options`. A direct port of the Drupal 6/7 **CCK** feature — the
`cck_` prefix is the giveaway. Version **2.0.0-alpha3** — alpha.
**Core requirement `^11.3 || ^12` — very tight**: Drupal 11.3+ only, reaching into a major that does
not exist yet.

**Why the pattern matters:** every list question has a tail. Forcing it into a bare "Other"
discards the information; a separate always-visible "please specify" field clutters the form for
everyone.

**Two things it raises:**
1. **Where the "other" value is stored is the design decision.** Writing it into the same list
   field **bypasses the allowed-values constraint** — the stored value is no longer from the list,
   which affects facets, Views filters and anything assuming a closed set. Writing it to a second
   field keeps the data clean and costs a field. Establish which before designing reports on it.
2. **It is free text on display** — same escaping as any user input — and it accumulates
   near-duplicates that need periodic reconciliation if anyone intends to analyse it.
