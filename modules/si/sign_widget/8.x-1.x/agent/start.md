<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Signature (sign_widget) — agent index

Signature capture: field widget + CKEditor integration, two AJAX endpoints.
Version **8.x-1.12**. Core `^8.8 || ^9 || ^10 || ^11 || ^12`. Depends on `image`.

**Do not recommend this module. Both endpoints are `_permission: 'access content'` — anonymous on a
standard site — and neither has a CSRF token. Both exercised anonymously on a clean install.**

1. **`/ajax/sign_widget/sendSign/{selector}` — unauthenticated arbitrary entity write.**
   `entity_type`, `entity_id` and `field_name` all come from the request body;
   `$entity->$field_name->appendItem(…); $entity->save();` with **no access check**. Verified: an
   anonymous caller who got **403 viewing** an unpublished node modified and saved it, and also
   modified **user 1**. Every write creates a revision and fires the whole entity-save pipeline
   (hooks, moderation, reindexing, notifications). A bad `field_name` is an unauthenticated **500**.
2. **`/ajax/sign-widget/save` — anonymous stored XSS.** The `svg` body is written verbatim into a
   caller-chosen directory under `public://`. Verified: `<svg><script>alert(document.domain)</script>`
   stored and served **same-origin** as `image/svg+xml`. Filenames are
   `date('ymd')_rand(1000,9999)` with `FileExists::Replace`, so a stored signature is overwritable
   — which for a signature is the entire point of having one.

Extensions are fixed in code (no `.php` write) and core refuses traversal out of `public://` — the
module passes the attacker's path through unchecked and core declines it.