<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Paragraphs Table of Contents (ptoc) — agent index

Builds pages from **nested paragraphs** and generates a **table of contents from their structure**.
Depends on core `block`, `entity_reference_revisions`, `field`, `file`, `image`, `link` — a wide
list, reflecting a module that ships the paragraph types as well as the contents logic.
Version **8.x-1.4**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why structure beats the alternatives:**
- **from body-field headings** — parses markup and depends on editors using the right heading
  levels, which they have not;
- **by hand** — right on the day it is written, wrong after the first edit;
- **from paragraph structure (this)** — the structure **is** the data, so the contents list is a
  rendering of it and **cannot disagree**.

**Three things determine whether it works:**
1. **Anchors must be stable.** A contents entry links to a section; an id derived from changing text
   **breaks every shared deep link** (the same trade `auto_anchors`, wave 77, faces).
2. **The contents list is navigation** — a real list of links, keyboard reachable, marked up so a
   screen reader can jump with it. That is the main thing a contents list is for.
3. **It should reflect access.** A section a visitor may not see must not appear, or the list
   becomes **an index of what is being withheld**.
