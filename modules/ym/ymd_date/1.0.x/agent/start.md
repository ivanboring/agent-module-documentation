<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# YMD Date (ymd_date) — agent index

Field for **pre-1970 dates** and dates with **optional month and day**.
Version **1.0.2**. Core `^10 || ^11`. Depends on `field`.

Two things core's date handling assumes and archives routinely break: **range** (timestamp-based
implementations struggle below 1970) and **precision** — "1847" and "March 1912" are dates, and
forcing them complete means inventing a day that is **indistinguishable afterwards from a real
one**.

**Two decisions partial dates force:** what a partial date means for **sorting and range filtering**
(does 1847 fall inside "1840–1850"? does "19th century"?), and that **display must preserve
precision** — rendering 1847 as "1 January 1847" reintroduces exactly the fabrication the field
exists to avoid.

Compare `wisski_date_field_extractor` (wave 84): this stores partial precision explicitly, that
derives structure from free text.