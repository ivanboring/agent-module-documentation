<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# csrf_anonymous_token — agent orientation

Tiny module (only `.module`) that tries to add CSRF tokens to anonymous forms via `hook_form_alter`.

- Adds `anon_token` element + prepends validator `anonymous_token_validate_anon_token`.
- CAVEAT: validator never calls `csrfToken()->validate()`; it does not truly validate the token, and its `!== null` check can error on valid submissions.
- No config, no routes, no permissions. Global effect on all tokenless forms.
- Security note: does not strengthen protection; can break legitimate anon submissions. Not a CSRF weakening of *existing* core protection (core has none for anon).
- File: `csrf_anonymous_token.module`.
