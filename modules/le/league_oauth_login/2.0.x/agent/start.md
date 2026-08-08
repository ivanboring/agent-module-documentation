<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# League OAuth Login — agent index

OAuth 2.0 **SSO login** via the League OAuth2 client (GitHub/GitLab submodules; maps the OAuth identity to a
Drupal account via externalauth). Version **2.0.8**. Core `^9.1||^10||^11`.

**SECURITY CAVEAT (2.0.8):** the OAuth **`state` (CSRF) check FAILS OPEN when the session has no stored
state** — the callback denies only `!state || (session_state && state !== session_state)`, so a fresh-session
victim + any `state` + an attacker's `code` **logs the victim into the attacker's account** (OAuth **login
CSRF**/session-swap). Patch to deny when `state !== session_state` incl. empty; make state single-use; client
secret as secret; HTTPS. See `security.md`.
