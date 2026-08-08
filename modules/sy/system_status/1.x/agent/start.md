<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# System Status (system_status) — agent index

Token-guarded **JSON endpoint reporting installed modules/themes/versions** for external monitoring
(`/admin/reports/system_status/{token}`), plus a settings page. Version **dev**.
Core `^10.3 || ^11 || ^12`.

**Security (see `security.md` — verified):** the endpoint token is generated with `shuffle()` (not a
CSPRNG) and compared with `==` (non-constant-time; type-juggling bypass for `0e[digits]` tokens —
verified). It returns `php_version`/`drupal_version` in **cleartext** regardless of payload
encryption, and the full inventory in clear without openssl. Treat as **effectively unauthenticated
reconnaissance** — IP-allowlist the monitoring source at the web server; don't rely on the token.
Settings route is correctly `administer site configuration`.