<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Signature lets a user draw a signature and stores it as a file, as a field widget and as a CKEditor integration.

---

Capturing a drawn signature is a recurring requirement — consent forms, delivery confirmations, agreements, registration flows — and doing it means a drawing surface in the browser plus somewhere to put the result. This module supplies both, with two endpoints behind them: one saving an SVG drawn in CKEditor, one saving a PNG and attaching it to an entity field.

**Do not deploy this. Both endpoints are gated only by `access content`, which anonymous users hold on a standard site, and both were exercised anonymously on a clean install.**

`/ajax/sign_widget/sendSign/{selector}` takes the **entity type, entity id and field name from the request body**, loads that entity, appends the uploaded file to that field and saves — with no access check of any kind. Verified: an anonymous caller who received **403 attempting to view** an unpublished node then modified and saved it, and separately modified **user 1**, the site administrator's account. That is unauthenticated arbitrary entity write, and every such write also creates a revision and fires the entire entity-save pipeline — hooks, moderation transitions, search reindexing, notifications.

`/ajax/sign-widget/save` writes the request's `svg` field verbatim into a caller-chosen directory under `public://`. Verified: an anonymous POST stored `<svg><script>alert(document.domain)</script>…</svg>` and the file was then served from the site's own origin as `image/svg+xml` with the script intact — same-origin stored XSS. Filenames are `date('ymd') . '_' . rand(1000,9999)` written with `FileExists::Replace`, so a stored signature can be overwritten by collision, which for a signature is the whole problem.

Neither route carries a CSRF token. The extensions are fixed in code, so neither can write a `.php` file, and core refuses traversal out of `public://` — but that is core declining a path the module passed through unchecked.

If a project needs signature capture, treat this as unusable until the entity-write endpoint validates access and the SVG path sanitises its input.

---

- Capture a drawn signature on a form.
- Attach a signature to a delivery record.
- Sign a consent form online.
- Store a signature as an image file.
- Insert a signature in CKEditor.
- Understand why the endpoints are unsafe.
- Restrict access content before considering it.
- Block .svg from the public files directory.
- Force attachment disposition for SVG.
- Audit a site already running this module.
- Check whether entities were modified anonymously.
- Look for unexpected file references on entities.
- Review file_managed for unexpected signature files.
- Report the missing access check upstream.
- Choose an alternative signature solution.
- Require authentication for signature endpoints.
