<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Download All Files adds a "download everything" link for a file field — a formatter and a block that bundle an entity's attached files into a zip.

---

Any page carrying several documents produces the same request: a tender with twelve annexes, a course with its handouts, a planning application with its drawings, a press kit. Downloading them one at a time is tedious and error-prone, and the alternative most sites reach for is asking editors to upload a second, manually maintained zip that immediately falls out of step with the field it duplicates. Generating the archive on demand from the field itself removes that whole class of problem. Version **2.0.2** on core `^10.2 || ^11`, depending on core `file`, exposing `/download_all_files/{entity_type}/{entity}/{field_name}` behind a custom access check. Three defects worth knowing before deployment, all found on review of this release. **The `{field_name}` parameter is not validated** beyond `hasField()`, so naming a non-file field on any viewable entity returns a 500 — verified anonymously on a clean install, which makes it a cheap way for an unauthenticated caller to flood the error log. **Field-level access is not checked**: the access callback tests entity view access and the controller then reads whichever field it was given, so a field hidden by `hook_entity_field_access` and holding public-scheme files is downloadable by anyone who can view the entity. And **generated zips are never deleted**, accumulating in the temp directory under a predictable path. None of these is difficult to fix, but all three are present in 2.0.2.

---

- Download all a page's attachments at once.
- Bundle a tender's annexes into a zip.
- Provide a course's handouts together.
- Download a press kit.
- Avoid a manually maintained zip file.
- Offer all drawings on a planning page.
- Add a download-all button to a node.
- Bundle report appendices.
- Provide a dataset's files together.
- Reduce clicks on a documents page.
- Keep the archive in step with the field.
- Offer a block-based download link.
- Bundle a product's specification sheets.
- Download meeting papers as one file.
- Provide conference materials together.
- Package a project's deliverables.
- Simplify a document library page.
- Offer bulk download of attachments.
