<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Delimited List (views_delimited_list) — agent index

Views **style plugin** rendering results as a single delimiter-separated run of text
("Design, Engineering, Marketing") rather than a list. Depends on core `views`.
Version **2.0.0**. Core requirement `^9 || ^10 || ^11`.

**Why a style plugin is the right layer:** it governs how the whole result set is wrapped, which is
exactly what "join these with a delimiter" is. Views' built-in styles (HTML list, table, grid,
unformatted) force either CSS fighting the markup or a per-site template override.

**Two things to check against the requirement — this is where implementations differ:**
1. **The last separator.** English prose often wants "A, B **and** C", not "A, B, C". If the output
   reads as prose rather than data, confirm a distinct final delimiter is configurable.
2. **Escaping.** A delimited **display** and a delimited **export format** are different jobs.
   Feeding a comma-separated list into a CSV cell produces a broken file unless the cell is quoted.
