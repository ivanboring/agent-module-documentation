<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Autocomplete with mixed matching (autocomplete_mixed_matching) — agent index

Entity reference autocomplete putting **prefix matches first** and still including **substring
matches** below. Version **1.1.0**. Core requirement `^10 || ^11`. Declares `php: 8.1`.

**Why core's single operator is wrong for the common case:**
- **STARTS WITH** finds "Smith" from "Smi" and **misses** it from "mith";
- **CONTAINS** finds it either way and **buries the exact match** among everything containing the
  string.

People type the beginning of what they want *and* sometimes a distinctive fragment from the middle.
Ranking prefix above substring is what every search box a user has met elsewhere does.

**Two things follow:**
1. **CONTAINS cannot use a normal index** — a leading wildcard forces a scan. On a reference target
   of a hundred thousand rows the substring half is the expensive half. **Measure on
   production-sized data**, not forty development terms.
2. **Autocomplete respects the selection handler's access — that is the correctness point.**
   Suggestions must be filtered by what the current user may reference, or the widget becomes a way
   to **enumerate entity labels, including unpublished ones, by typing letters** — a quiet
   disclosure nobody notices because it looks like a helpful list.
