<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
REST Log records REST API requests and responses as `rest_log` entities — method, URI, headers, cookies, payload, status, response body and timing.

---

Debugging an API is answering "what did the client send and what did we return?", and without a record that question turns into adding instrumentation to two systems at once. This module keeps the record as entities, so it is queryable, viewable through Views and subject to an access handler rather than being a file someone tails.

Its design shows care in the places that matter. `Authorization` is masked with the scheme preserved — `Bearer tok*********` — so the log still tells you an auth-type mismatch without printing the token. Session cookies are matched by prefix (`SESS`, `SSESS`, `openid_connect`), which is the right shape because Drupal generates those names per site. There is a `RestLogAccessControlHandler`, and a `maximum_lifetime` setting with automatic cleanup.

**Four things to know before switching it on, all verified.** The header mask is a **denylist** of names containing `auth`, `pass`, `token` or `cookie`, so **`x-api-key` is logged verbatim** — tested, the value came back in clear while `Authorization` was masked. `maskString()` keeps the **first three characters** of every secret, which is enough to identify a credential's vendor (`sk-`, `ghp_`, `xox`, `AKI`) and, for a short secret, a real fraction of it. **Request payloads and response bodies are stored with no redaction at all**, so a POST to a login resource stores the password from the body and a GET on a user resource stores whatever personal data it returned — which makes the `rest_log` table a personal-data store with the retention and erasure obligations that implies. And **cache-served responses are never logged**, so a repeat GET produces no entry: the log is a record of cache misses, which makes it unusable as an audit trail.

Used as a diagnostic switched on for an investigation, with a short lifetime and restricted view access, it is a good tool. Left running on a production API it accumulates credentials and personal data in a table most operators think of as debug output.

---

- See what a REST client actually sent.
- See what Drupal returned to it.
- Debug an API integration from both sides.
- Query request logs through Views.
- Restrict who may read API logs.
- Expire logs automatically after a period.
- Diagnose an auth-scheme mismatch without printing the token.
- Investigate a failing client request.
- Compare requests across environments.
- Set a short maximum lifetime before enabling.
- Exclude the rest_log table from database dumps.
- Recognise that x-api-key is not masked.
- Account for payloads and bodies being stored in clear.
- Treat the table as a personal-data store.
- Understand that cache hits are never logged.
- Avoid relying on it as an audit trail.
- Switch it on for an investigation and off afterwards.
- Filter same-host referrer requests in or out.