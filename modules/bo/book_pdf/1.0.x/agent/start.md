<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Book PDF — agent index

**Prints an entire Book to a PDF file** (renders the book page tree). Depends on core `book`. Provides
permissions. Version **1.0.x** (dev). Core `^8||^9||^10||^11`.

**SECURITY — access-control bypass (danger 4).** `/book-pdf/{book}/send` is gated only by `access content` +
`entity:node` param; `sendPdf()` → `getFileUri()` generates/returns the PDF with **no `$book->access('view')` or
published check** (controller + generator). Anonymous callers can iterate node ids and download PDFs of
**unpublished/restricted book content** (child pages too). Same class as `entity_pdf`. Fix: check
`$book->access('view')` / `_entity_access: 'book.view'` before serving. Recorded as a danger-4 finding.
