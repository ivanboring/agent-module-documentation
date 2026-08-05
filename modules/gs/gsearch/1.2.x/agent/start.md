<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GSearch (Dataforsyningen) (gsearch) — agent index

Danish address field type/widgets backed by **Dataforsyningen's GSearch API**. Depends on core
`field` and `select2 ^2`; also requires `thecodingmachine/safe ^2`.
Core requirement `^10.5 || ^11`. Settings at `/admin/config/gsearch/config`
(gated by `administer site configuration`; no module-specific permission).

Key facts:
- Default endpoint `https://api.dataforsyningen.dk/rest/gsearch/v2.0/`
  (`GsearchService::$defaultApiUrl`), overridable via the `api_url` setting; an API `token`
  setting is sent with requests.
- Two front-end routes, **both `_permission: 'access content'`** — anonymous on a default site:

  | Route | Path |
  |---|---|
  | `gsearch.autocomplete` | `/gsearch/address` |
  | `gsearch.autocomplete.select2` | `/gsearch/address/select2` |

  Both pass `?q=` straight to `GsearchService::getAddresses()`. This is **not** SSRF — the target
  URL is admin-configured, not caller-supplied — and the token is not echoed back. What it does
  mean is that **anyone who can load the site can consume the site's Dataforsyningen quota**
  through these endpoints. If the API is rate-limited or billed, treat the endpoints as an abuse
  surface and consider a rate limit in front of them.
- Per this repo's convention the API token belongs in an environment variable
  (`ddev dotenv set .ddev/.env --gsearch-token=…`) surfaced through a Key entity, not committed
  in exported config.
- Surface: `src/Services/`, `src/GsearchAddress.php`, `src/AddressGsearchItemInterface.php`,
  `src/Plugin/` (field type/widget/formatter), `src/Controller/GsearchAutocomplete.php`,
  `templates/gsearch-address{,es}.html.twig`.
