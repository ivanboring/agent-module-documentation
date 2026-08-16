# Configuration

Book PDF provides its own permission and a settings form for the PDF output, but
the most important thing on this page is the **security warning** — please read
it before exposing the module on any site with non‑public content.

## Security — access‑control bypass (must fix before deploying)

The download route `/book-pdf/{book}/send` is gated **only** by the core
*access content* permission, which anonymous visitors normally hold. The
controller takes the book as a node route parameter and returns the generated
PDF **without checking `$book->access('view')` and without checking whether the
book (or its child pages) is published**.

The practical consequences:

- An anonymous or low‑privileged visitor can request
  `/book-pdf/<node-id>/send` for arbitrary node IDs and download PDFs of
  **unpublished or access‑restricted books**.
- The export renders the book's **child pages too**, unchecked — so restricted
  child content is exposed the same way.
- The PDF is generated on demand, so there is no "it was never cached"
  protection.

This is an information‑disclosure / access‑bypass issue (the same class as the
`entity_pdf` finding). **Do not deploy this module until it enforces access.**
The fix is to check `$book->access('view')` (returning 403 on denial) before
generating and serving the file — for example by adding
`_entity_access: 'book.view'` to the route — and to check access on each child
page that is rendered. Until then, treat every book on the site as readable by
anyone who can reach the route. Note that granting or restricting the module's
own permission does **not** close this bypass.

## The permission

The module provides its own permission. Grant it at **People → Permissions**
(`/admin/people/permissions`) to the roles that should be allowed to export
books to PDF. Remember that this permission controls who is *offered* the
export; it does not fix the access bypass described above.

## PDF settings

The module ships a settings form for the PDF output (it provides its own config
schema). Use it to configure how the PDF is produced. The exact fields depend on
the version and the PDF library in use — open the form on your site to see the
available options. Because the docs for this niche module do not pin an admin
path, look for its settings link on the Extend page after enabling it, or
consult the module's `README`.
