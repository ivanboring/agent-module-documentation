<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds HTTP Key Fetcher provides an HTTP fetcher for Feeds that sends an authentication key with the request.

---

Feeds HTTP Key Fetcher adds a Feeds **fetcher plugin** that includes an **authentication key** (API key /
auth header) when fetching a remote feed over HTTP — so Feeds can pull from an endpoint that requires a key,
which the plain HTTP fetcher can't. It is used with the Feeds module, in the Feeds package.

Use it to import from key-protected feed endpoints. Security handling: the fetch key is a **credential** —
store/configure it as a secret (not in committed config) and ensure the feed URL is **HTTPS** so the key isn't
sent in cleartext. Requests use Drupal's HTTP client (TLS verification on by default). It has no access-control
role. Configure the fetcher with the endpoint and key on the feed type.

---

- Fetch key-protected feeds.
- Send an auth key with the request.
- Provide a Feeds fetcher plugin.
- Import from key-protected endpoints.
- Use Drupal's HTTP client (TLS on).
- Work with the Feeds module.
- STORE the fetch key as a secret.
- Use HTTPS so the key isn't cleartext.
- Have no access-control role.
- Configure the endpoint and key.
- Handle the fetcher.
- Fetch with a key.
- Import protected feeds.
- Handle authentication.
- Configure the feed type.
- Send the key header.
- Handle key fetching.
- Fetch remote feeds.
- Configure the fetcher.
- Pull authenticated feeds.
