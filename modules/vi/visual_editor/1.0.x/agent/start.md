<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Visual Editor (visual_editor) — agent index

Visual page editing, with **`visual_editor_paragraphs`** extending it to paragraph-based pages.
Core requirement `^10 || ^11`.

**Two things to establish before adopting any visual editor** — this is where such tools differ
and where they disappoint:
1. **Fidelity.** Is what the editor sees the genuine rendered output, or an approximation? An
   approximation that diverges from the real page is worse than an honest form.
2. **What it writes.** A visual editor that produces **markup** rather than structured **field
   values** trades away the data model — the thing Drupal's field system exists to protect. Check
   that editing through it produces the same values the form would, particularly for:
   - **translation** (markup is not translatable the way fields are),
   - **revisions**,
   - any **API consumer** reading fields directly.

Positioned alongside core's Layout Builder and in-place editing, which approach the same gap from
different directions — establish which the site already uses before adding a third.
