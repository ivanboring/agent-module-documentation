<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Table Formatter renders a multi-value file field as a table, with columns for the things a reader needs before deciding whether to download.

---

Core's file formatter produces a list of links, which is adequate for one attachment and poor for twelve. A page with a dozen documents — a tender's annexes, a committee's papers, a planning application's drawings, a set of published datasets — is a page where the reader is choosing, and choosing needs information the link text does not carry: what kind of file it is, how large, and often when it was published. A 40 MB PDF and a 12 KB spreadsheet look identical as links, and a reader on a metered connection has been given no way to decide. A table with type, size and date columns is the presentation every government publication uses for exactly this reason. Version **2.0.2** on `^8` through `^11`. Three things worth attaching. **File size and type in the link text are an accessibility expectation, not a nicety** — WCAG guidance and every public-sector content standard call for indicating when a link opens a document and what it costs to open, and a table satisfies that structurally. **The table must be a real table** with header cells and scope, because the whole point is that a screen-reader user can navigate it by column rather than hearing twelve undifferentiated links. And **the file's own metadata is what is displayed**, so a table showing a helpful description depends on the field carrying one — the `description` property of a file field is where that lives, and a site that never enabled it has a table of filenames, which is better than a list of filenames and not by much.

---

- Show a tender's annexes as a table.
- List committee papers with sizes.
- Display planning drawings with dates.
- Show file types before downloading.
- List published datasets in a table.
- Show document sizes to readers.
- Display attachments with metadata.
- List meeting minutes by date.
- Show a report's appendices.
- Display a resource library's files.
- Show file formats in a listing.
- List downloadable forms.
- Display conference materials.
- Show a project's deliverables.
- List policy documents with sizes.
- Display supporting evidence files.
- Show a publication's data files.
- List guidance documents in a table.
