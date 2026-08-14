<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Evangelische Termine (evangelische_termine) — agent index

**Church-events integration for evangelische-termine.de: filtered-list / teaser / resource-booking blocks + autocomplete. Contains an unauth SSRF — see finding.**

- **Version:** 8.x-1.x  •  core: `^8 || ^9 || ^10`  •  package: Vernetzte Kirche  •  depends on `colorbox`.
- **Blocks:** `FilteredList`, `Teaser`, `ResBooking` (all fetch from a configured evangelische-termine.de host). Forms: `FilterForm`, `MoreForm`.
- **Route:** `/et-slider-autocomplete/{field_name}/{type}/{typeid}/{host}` (`_access: 'TRUE'`) → `AutocompleteController::handleAutocomplete`.

**Security finding (D3, unauthenticated SSRF):** `AutocompleteController::searchUser()` builds `$url = 'https://' . $host . '/searchuser/' . $q . '/' . $type . '/' . $id;` and `curl_exec`s it (with `CURLOPT_FOLLOWLOCATION`), returning the response body to the caller as JSON — where `$host` (and `$q`/type/id) come from the anonymous route's URL/query. An unauthenticated attacker can force server-side HTTPS requests to arbitrary hosts and read the responses (reach internal services / reflect JSON). Fix: pin the host to a hardcoded allowlist, urlencode path parts, and restrict route access. (`src/Controller/AutocompleteController.php`, route in `evangelische_termine.routing.yml`.)
