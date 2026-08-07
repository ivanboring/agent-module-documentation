<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Ultimate Table Field (ultimate_table_field) — agent index

Field type storing **tabular data as data**, not markup in a text field.
Version **2.0.0**. Core `^10 || ^11`. Depends on `field`.

Fixes what WYSIWYG tables get wrong at once: drifting markup, lost header rows, unqueryable
structure, unreadable on a phone.

**Two things decide whether the output is usable — check the formatter, do not assume:** real
`<th>` cells with `scope` (a div grid is unlabelled values), and a **deliberate responsive
strategy** — scrolling keeps structure and hides columns; stacking keeps everything visible and
destroys the comparison that was the point.

**Also decide how data gets in.** Typing a large table cell by cell is slow enough that people paste
from a spreadsheet — whether that works shapes whether the field is used.