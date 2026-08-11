<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds Crawler Fetcher creates a new fetcher for Feeds to crawl a set of URLs.

---

Feeds Crawler Fetcher **adds a Feeds fetcher that crawls a set of URLs** — for the Feeds import framework, it
fetches multiple URLs (crawling a list) server-side so their content can be parsed and imported. It integrates
with Feeds.

Use it to import from multiple crawled URLs. It is an import/integration feature. Security note (SSRF): like any
server-side fetcher, it makes **outbound HTTP requests from your server to the configured URLs** — Feeds sources
are normally **admin-configured** (limited risk), but if any URL is user-influenced, a crawler can be pointed at
**internal/private endpoints** (localhost, cloud metadata, internal APIs). Keep the URL list admin-controlled and,
where relevant, validate/allowlist targets. It has no access-control role. Configure the crawl URLs.

---

- Add a URL-crawling Feeds fetcher.
- Fetch a set of URLs server-side.
- Feed content to the import parser.
- Integrate with Feeds.
- Serve import/integration.
- Crawl multiple URLs.
- Make outbound HTTP requests from the server (SSRF consideration).
- Keep the URL list admin-controlled (Feeds sources normally are).
- Allowlist/validate targets if any URL is user-influenced (block internal/metadata).
- Have no access-control role.
- Configure the crawl URLs.
- Handle URL crawling.
- Crawl URLs.
- Configure the fetcher.
- Fetch pages.
- Handle the import.
- Gather content.
- Import feeds.
- Trust the URL list.
- Provide a crawling fetcher.
