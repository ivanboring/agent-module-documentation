<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Currency API — agent index

Fetches and displays **currency exchange rates from an external API** (e.g. currencyapi.com). Config at
`currencyapi.settings` (base URL + API key). Version **1.10.13**. Core `^10.2||^11`.

Integration — fetches over **HTTPS** via `file_get_contents()` (PHP verifies TLS by default; not disabled
here). **API key** is URL-embedded + stored in config → treat as a secret (Key/env; URL keys can surface in
logs). No access role.
