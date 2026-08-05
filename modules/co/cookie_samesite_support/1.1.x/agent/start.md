<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cookie SameSite support (cookie_samesite_support) — agent index

Sets **`SameSite=None`** on Drupal's session cookie and emits a **legacy duplicate** without the
attribute for browsers that reject the value. Decorates `SessionManager` and
`SessionConfiguration`; the source cites web.dev's SameSite cookie recipes. Version **1.1.1**.
Core requirement `^9 || ^10 || ^11`.

**The problem it solves:** browsers default `SameSite` to `Lax`, so a Drupal site **embedded in an
iframe on another domain** never receives its session cookie and the user appears logged out.
`None` restores it; some older browsers reject `None` outright and drop the cookie entirely, hence
the two-cookie pattern.

**Be explicit about what is given up — this is a security-relevant change:**
- **`SameSite` is a CSRF defence.** `None` switches it off for the session cookie. Drupal's form
  tokens and `_csrf_token` route requirements remain and are the primary defence, but **a layer is
  gone** — any state-changing route without a token is materially more exposed.
- **`Secure` is mandatory with `None`.** The site must be HTTPS throughout.
- **The legacy duplicate is a second copy of a session identifier on every request.** Confirm the
  browsers the site actually serves still need it.
