<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Request API Key Authentication (services_api_key_auth) — agent index

API key authentication provider for REST / JSON:API. `api_key` entities managed at
`/admin/config/services/api-key-auth` (`administer services_api_key_auth`).
Core requirement `^10.3 || ^11`.

> ## API keys are stored in exportable configuration
>
> `api_key` is a **`@ConfigEntityType`** whose `config_export` includes the `key` value. Verified
> on this site: the created entity's exported config contained
> `key => SECRET-API-KEY-abcdef0123456789` in cleartext. So `drush cex` commits live credentials
> to git, present in every clone, CI artefact and branch history.
>
> The impact is impersonation, not just endpoint access: each key carries a **`user_uuid`**, and
> the provider loads that user and runs the request as them.
>
> **Mitigation today:** exclude `services_api_key_auth.api_key.*` from export via `config_ignore`
> or `config_split`, and treat any already-exported key as compromised. See the local
> `security.md`.

Key facts:
- **Defaults are good:** `api_key_request_header_name: 'api_key'`, with
  `api_key_post_parameter_name` and `api_key_get_parameter_name` **empty**. Enabling the
  query-parameter path leaks keys into access logs, `Referer` headers, browser history and proxy
  logs — flag it if a site has turned it on.
- Key generation is sound: `substr(hash('sha256', random_bytes(16)), 0, 32)` — 128 bits from a
  CSPRNG.
- The loose `==` in `authenticate()` is **not** a bypass: the key is first resolved by an exact
  storage lookup (`loadByProperties(['key' => …])`), so both sides are equal by construction.
  Contrast `cache_utility` (wave 61), where the comparison *was* the gate.
- `getKey()` returns FALSE on this module's own `entity.api_key.*` routes, so a key being edited
  cannot be used to authenticate against its own admin form.
