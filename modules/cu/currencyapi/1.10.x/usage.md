<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Currency API fetches and displays currency exchange rates from external APIs.

---

Currency API fetches **currency exchange rates** from an external API (e.g. currencyapi.com) and makes
them available to display/convert prices on the site. It is configured at `currencyapi.settings` (base URL +
API key), in the Custom package.

Use it to pull live exchange rates. It is an integration feature. Security handling: it fetches over **HTTPS**
(`https://api.currencyapi.com/v3/latest?apikey=…`) using `file_get_contents()` — PHP verifies the TLS peer by
default and the stream context here does **not** disable it, so the connection is verified (good). The **API
key** is passed in the request URL and stored in config: treat it as a secret (store via the Key module /
environment, not committed config), and be aware URL-embedded keys can surface in server/proxy logs. It has no
access-control role. Configure the endpoint and API key.

---

- Fetch currency exchange rates.
- Use an external currency API.
- Display/convert with live rates.
- Fetch over HTTPS (TLS verified by default).
- Configure at currencyapi.settings.
- Use file_get_contents for the request.
- Store the API key as a secret.
- Note URL-embedded keys can hit logs.
- Have no access-control role.
- Configure the endpoint and key.
- Handle exchange rates.
- Fetch rates.
- Convert currencies.
- Handle the API.
- Pull rates.
- Configure currency.
- Handle the integration.
- Display rates.
- Configure credentials.
- Provide exchange rates.
