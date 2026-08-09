<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bitly Shortener provides Bitly URL-shortening services.

---

Bitly Shortener shortens URLs through the **Bitly API** — providing a service and a Twig function
(`{{ bitly_shortener('https://…') }}`) so links can be rendered as Bitly short links. It is configured at its
settings form with a Bitly **access token**.

Use it to produce Bitly short links. It is an integration feature. Security handling: it calls the Bitly API
using Drupal's HTTP client (Guzzle, **TLS verification on by default**) with the configured **access token** —
treat that token as a **secret** (store via env/Key, not committed config). Note the Twig function makes an
**external API call at render time** (a performance and rate-limit consideration, and it sends the URL to
Bitly), so use it judiciously/cache results. It has no access-control role. Configure the Bitly token.

---

- Shorten URLs via the Bitly API.
- Provide a bitly_shortener Twig function.
- Render links as Bitly short links.
- Call the API over TLS (Guzzle default).
- Use a Bitly access token.
- Store the token as a secret.
- KNOW the Twig function calls the API at render time.
- Consider performance/rate limits.
- Send URLs to Bitly.
- Have no access-control role.
- Configure the Bitly token.
- Handle URL shortening.
- Shorten links.
- Configure Bitly.
- Generate short links.
- Handle the token.
- Call Bitly.
- Shorten URLs.
- Configure credentials.
- Provide short links.
