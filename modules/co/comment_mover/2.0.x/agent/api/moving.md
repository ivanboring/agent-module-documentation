<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Comment Mover — operations

## Routes (permission: `administer comments`)
- `GET /comment_mover/cut/{entity_type}/{entity_id}` → `CommentMoverController::cut()` —
  stores the entity on the clipboard (`comment_mover.clipboard`), then
  `RedirectResponse($request->get('destination'))`.
- `GET /comment_mover/paste/{entity_type}/{entity_id}` → `::paste()` — re-parents clipboard
  comments under the target and invalidates cache tags.

## Services
- `comment_mover.clipboard` → `Clipboard` (uses `tempstore.private`): `cut()`, `paste()`.
- `comment_mover.mover` → `CommentMover` (uses `entity_type.manager`): performs the re-parenting
  and node↔comment conversion (`CutEntity`).

## Caveats for callers
Both routes are GET, unprotected by a CSRF token, and redirect to the raw `?destination`
query value. Only expose to trusted users holding `administer comments`.