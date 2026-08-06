<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# REST Log (rest_log) — agent index

Logs REST requests/responses as **`rest_log` entities** — method, URI, headers, cookies, payload,
status, response body, timing. Configure at `rest_log.settings`. Version **2.3.1**.
Core `^8 || ^9 || ^10 || ^11`. Depends on `rest`, `views`.

Only logs routes with `_rest_resource_config` (`RestPageRouteCheck::applies()`), i.e. REST module
resources — not core's `user.login.http`.

**Done well:** `Authorization` masked with the scheme preserved (`Bearer tok*********`); session
cookies matched by **prefix** (`SESS`, `SSESS`, `openid_connect`); a `RestLogAccessControlHandler`;
`maximum_lifetime` with automatic cleanup.

**Four things to state before it is switched on — all verified:**

1. **The mask is a denylist** on header names containing `auth`/`pass`/`token`/`cookie`.
   **`x-api-key` came back in clear** while `Authorization` was masked. Also missed: `x-secret`,
   `x-signature`, `x-client-secret`.
2. **`maskString()` keeps the first 3 characters** — enough to identify the vendor (`sk-`, `ghp_`,
   `xox`, `AKI`), and a real fraction of a short secret.
3. **Payloads and response bodies are stored unredacted.** A login POST stores the password; a user
   GET stores the personal data. That makes the table a **personal-data store**.
4. **Cache-served responses are never logged** — a repeat GET produced no entry. The log records
   cache *misses*, so an absence of entries is not evidence of an absence of requests. **Unusable
   as an audit trail.**

Fit: a diagnostic switched on for an investigation with a short lifetime and restricted view
access.