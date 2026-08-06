<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Table Formatter (file_table_formatter) — agent index

Renders a multi-value **file field as a table**, with columns for type, size and date.
Version **2.0.2**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why a list of links fails at scale:** adequate for one attachment, poor for twelve. A page with a
dozen documents — tender annexes, committee papers, planning drawings, published datasets — is a
page where **the reader is choosing**, and choosing needs what the link text does not carry. **A
40 MB PDF and a 12 KB spreadsheet look identical as links**, and a reader on a metered connection
has been given no way to decide.

**Three things worth attaching:**
1. **File size and type are an accessibility expectation, not a nicety.** WCAG guidance and every
   public-sector content standard call for indicating **when a link opens a document and what it
   costs to open**. A table satisfies that structurally — which is why it is the presentation
   government publications use.
2. **It must be a real table** — header cells with `scope` — so a screen-reader user can navigate
   **by column** rather than hearing twelve undifferentiated links.
3. **The file's own metadata is what is displayed.** A helpful description depends on the field
   carrying one — the file field's **`description`** property. A site that never enabled it has a
   table of **filenames**, which beats a list of filenames but not by much.
