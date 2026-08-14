<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# View API Response — configuring API types

**Collection:** `/admin/structure/view-api-response` (add/edit/delete
`view_api_response_api_type` config entities; admin_permission
`administer site configuration`).

Each API type (`ApiTypeForm`) stores:
- `server_url` — target endpoint.
- `method` — HTTP method passed to Guzzle.
- `header` — newline-separated `Name|Value` pairs.
- `auth_status` + `username` / `password` — optional HTTP basic auth (password
  stored **plaintext** in config).
- `proxy_status` + `proxy` — optional outbound proxy.
- `source` — `json` (decoded) or `xml` (`simplexml_load_string` → array).

**Viewing:** `/admin/view-api/response?type=<id>` (permission
`Access View API Response`) loads the entity, builds Guzzle options in
`ViewApiResponseController::getResponse()`, calls `ApiCall::getRequest()`
(`\Drupal::httpClient()`), and prints the decoded result with `print_r()`.

**Cautions for agents:**
- The viewing permission is *not* `restrict access` — do not grant it to
  untrusted roles; it exposes responses fetched with stored credentials.
- The outbound URL is arbitrary and admin-controlled; treat editors of these
  entities as trusted (SSRF reach).
- TLS verification is left at Guzzle defaults (not disabled).
