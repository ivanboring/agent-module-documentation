<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Request API Key Authentication adds an API key authentication provider to Drupal, so a machine caller can authenticate to REST or JSON:API with a key in a request header instead of a session or basic auth.

---

Decoupled front ends and server-to-server integrations need an authentication method that is not a browser session. Drupal core offers cookie and HTTP basic auth; basic auth means putting a user's real password in every request, which is exactly what an API key exists to avoid. This module defines an `api_key` entity — created and managed at `/admin/config/services/api-key-auth` under `administer services_api_key_auth` — each key bound to a Drupal user via `user_uuid`, and an authentication provider that resolves an incoming key to that user, so the request runs with that account's permissions. Key generation is sound: 128 bits from a CSPRNG. The configuration defaults are also sensible — the key is read from a request header (`api_key`) by default, with the POST-parameter and query-parameter names empty, so the query-string path is opt-in rather than on. The thing to plan around before adopting it is storage: `api_key` is a **configuration entity** with the key value in its exported properties, which this campaign confirmed means `drush cex` writes live credentials into version control. The local security notes explain the impact and the mitigation.

---

- Authenticate a decoupled front end to Drupal.
- Give a server-to-server integration its own key.
- Avoid sending a user password on every API request.
- Bind an API key to a specific Drupal account.
- Revoke a key without changing a password.
- Issue separate keys per consumer.
- Authenticate JSON:API requests from a script.
- Support a headless application.
- Restrict API access by the bound user's permissions.
- Rotate a key without redeploying the consumer.
- Read the key from a request header.
- Audit which key belongs to which integration.
- Provide keys to partner systems.
- Authenticate a scheduled import job.
- Support a mobile app backend.
- Separate machine access from human accounts.
- Manage keys from the admin UI.
- Replace basic auth on an API.
