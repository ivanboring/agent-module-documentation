<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Book PDF prints an entire Book to a PDF file.

---

Book PDF **prints an entire Book to a PDF file** — generating a downloadable PDF of a book's page tree (the
book node and its child pages) from core's Book module. It depends on core Book, provides its own permissions,
in the Book package.

**Security — access-control bypass (danger 4 finding).** The download route `/book-pdf/{book}/send` is gated
only by `_permission: 'access content'` (which anonymous users typically hold) and takes the book as a
`type: entity:node` route parameter. `BookPdfController::sendPdf()` calls `BookPdfGenerator::getFileUri($book)`
and returns the PDF as a `BinaryFileResponse` — with **no `$book->access('view')` check and no published-status
check** anywhere in the controller or generator, and `getFileUri()` **generates the PDF on demand**
(`getPdfContents()` renders the book tree) if not cached. So a low-privileged or **anonymous** attacker can
request `/book-pdf/<nid>/send` for arbitrary node ids and download PDFs of **unpublished book pages or
access-restricted books** (the export also renders child pages, unchecked) — an information-disclosure /
access-bypass (same class as `entity_pdf`). Do not deploy this until it enforces access. Fix: check
`$book->access('view')` (403 on deny) before generating/serving, add `_entity_access: 'book.view'` to the route,
and check access on each child page rendered. Until patched, treat any book content as readable by anyone who
can reach the route. Configure the PDF settings (admin) and the permission — but note the permission does not
close the access-bypass.

---

- Print a Book to a PDF file.
- Render the book page tree.
- Depend on core Book.
- Generate the PDF on demand.
- Serve book export.
- Provide its own permissions.
- HAVE an access-control bypass (danger 4).
- Gate the route only by 'access content'.
- Do NO $book->access('view') / published check.
- Let anonymous read unpublished/restricted books by node id.
- Render child pages unchecked too.
- Require a fix (add access checks) before deploying.
- Handle book PDFs.
- Generate PDFs.
- Configure the settings.
- Export books.
- Handle the export.
- Print books.
- Treat book content as exposed until patched.
- Provide book-to-PDF (with a known access-bypass).
