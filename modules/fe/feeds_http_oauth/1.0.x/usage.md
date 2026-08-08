<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds HTTP OAuth Fetcher provides an OAuth 2.0-enabled HTTP fetcher for Feeds (3.x), fetching from APIs that require OAuth, with credentials stored via the Key module.

---

Feeds HTTP OAuth Fetcher adds an OAuth 2.0-capable HTTP fetcher to Feeds (3.x) — so a feed can pull
data from an API that requires OAuth 2.0 authentication (client-credentials or similar), obtaining and
sending the access token automatically. It depends on the Feeds module and the Key module, using Key to
store the OAuth client credentials securely.

Use it to import from OAuth-protected APIs on a schedule via Feeds. The security-relevant point is
credential handling: because it integrates the Key module, store the OAuth client ID/secret (and any
token) as Keys (environment or secure provider), never in plaintext config. Fetched data becomes site
content, so treat it as external input. Configure the fetcher on the feed type with the token endpoint
and Key-stored credentials.

---

- Fetch OAuth-protected APIs with Feeds.
- Add an OAuth 2.0 HTTP fetcher.
- Import from APIs needing OAuth.
- Store OAuth credentials via Key.
- Depend on Feeds and Key.
- Obtain and send access tokens.
- Import data on a schedule.
- Keep client secrets out of plaintext.
- Configure the token endpoint.
- Treat fetched data as external input.
- Use client-credentials OAuth.
- Provide the fetcher on a feed type.
- Handle token refresh.
- Pull protected API data.
- Secure OAuth credentials.
- Support Feeds 3.x.
- Authenticate feed fetches.
- Import from secured endpoints.
- Use Key for OAuth secrets.
- Fetch with bearer tokens.
