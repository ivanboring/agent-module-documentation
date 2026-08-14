<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# View API Response (view_api_response) — agent index
**Admin tool that calls configured external HTTP APIs and prints their responses as an array.**

- **Version:** 2.0.x (info.yml `2.0.0`)
- **Core:** >=8
- **Configure:** `entity.view_api_response_api_type.collection` — `/admin/structure/view-api-response` (config entity admin_permission `administer site configuration`).
- **Route:** `view_api_response.response` `/admin/view-api/response?type=<id>` — permission `Access View API Response` (**no `restrict access`**).
- **Entity:** `view_api_response_api_type` config entity (url, method, headers, auth user/password, proxy, source json/xml).
- **Security observations:**
  - Outbound URL/headers/auth/proxy are admin-configured (SSRF bounded by `administer site configuration`).
  - Viewing route permission `Access View API Response` is not `restrict access`; a low-priv role granted it can trigger the call and read the response returned using stored credentials.
  - Basic-auth `password` stored plaintext in config entity.
  - `getResponse()` emits `print_r($results)` into `#markup` (admin-filtered) from remote content; Guzzle defaults (TLS not disabled).

See [configure/api-types.md](configure/api-types.md)
