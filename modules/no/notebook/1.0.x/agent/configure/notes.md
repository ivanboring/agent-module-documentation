<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Operating the Notebook

Enable the module and grant `administer notebook` to the relevant role.

Pages (all require `administer notebook`):
- `notebook/page` — add-note form plus paged list of notes.
- `add/notes` — standalone add form (subject required, body required, phone optional 10-digit).
- `notes/desplay` — paged list (4/page) with View and Remove links.
- `see/note?show_id=<id>` — full view of one note.
- `edit/note_page?edit_id=<id>` / `edit/note?edit_id=<id>` — edit a note.
- `remove/note?id=<id>` — delete a note.

Agent cautions:
- There is no per-user ownership: anyone with the permission sees and edits every note.
- `remove/note` performs a destructive delete on a GET request with **no CSRF token**; do not embed it where a third-party page could auto-request it, and treat it as a CSRF risk when reviewing.
- IDs come from `$_GET`/`$_REQUEST`; queries are parameterised so there is no SQL injection, but there is no ownership/authorisation check beyond the shared permission.
