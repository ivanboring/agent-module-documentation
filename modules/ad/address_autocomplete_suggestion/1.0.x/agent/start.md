<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address Autocomplete Suggestion — agent orientation

Address-field autocomplete widget backed by pluggable geocoding providers.

Key files:
- `src/Controller/AddressAutocompleteSuggestion.php` — `handleAutocomplete()` reads `q`, runs the active provider's `processQuery()`, returns JSON.
- `*.routing.yml` — endpoint `address_autocomplete_suggestion.addresses` has `_access: 'TRUE'` (commented-out CSRF); admin routes require `access administration pages`.
- `src/Plugin/AddressProvider/{GoogleMaps,MapboxGeocoding,PostCh}.php` — Guzzle calls (default TLS, not disabled) using stored keys/credentials.
- `src/Plugin/AddressProviderBase.php` — `new Client()`, unserializes provider config from module config (admin-set).

Security finding (report): the anonymous autocomplete endpoint proxies arbitrary attacker input to the site's paid geocoding provider using stored credentials → unauthenticated API-key/quota abuse (D2). Author acknowledges it in a code TODO. Fix: gate the route with a permission or custom token + rate limiting. Also: Mapbox provider interpolates `$q` into the URL path unescaped (minor). `unserialize()` reads admin-set config only (not user input) → not exploitable.
