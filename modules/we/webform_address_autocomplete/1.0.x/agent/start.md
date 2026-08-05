<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Address Autocomplete (webform_address_autocomplete) — agent index

Address lookup for Webform's Address element, with a **swappable provider plugin type**.
Depends on `webform ^6.2 || ^6.3`. Core requirement `^9.5 || ^10 || ^11`.
Settings at `/admin/config/webform-address-autocomplete` (`administer site configuration`).

| Route | Path | Requirements |
|---|---|---|
| `…settings` | `/admin/config/webform-address-autocomplete` | `administer site configuration` |
| `…addresses` | `/webform-address-autocomplete/addresses` | **`_access: 'TRUE'`**, `_format: json` |

Key facts:
- **The open endpoint is not SSRF.** `handleAutocomplete()` reads `q` and optional `country` from
  the query string; the **plugin id comes from configuration** (`active_plugin`), not the request,
  so a caller cannot redirect the lookup at another service.
- What it *does* mean: anyone who can load the site can consume the site's **address-lookup
  quota** through the endpoint. If the provider bills per query or rate-limits, put a rate limit
  in front of it. Same shape as `gsearch` (wave 59).
- Openness is necessary — an anonymous respondent must be able to use the widget — so the fix is
  throttling, not authentication.
- Provider plugin type: `src/Plugin/`, `src/Annotation/`, plugin manager; add a provider rather
  than patching the module.
- Surface also includes `src/Element/`, `src/Routing/`, `src/Form/SettingsForm.php`.
