<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds Paginated Fetcher extends Feeds with a paginated HTTP fetcher that follows pagination.

---

Feeds Paginated Fetcher **adds a paginated HTTP fetcher to Feeds** — fetching a multi-page API endpoint and
**automatically following pagination** to retrieve all items in one import run. It depends on the Feeds module.

Use it to import complete multi-page API feeds. It is an import/integration feature. Security note (SSRF): it makes
**server-side outbound HTTP requests** to the configured endpoint (and follows its pagination links) — Feeds
sources are normally **admin-configured**, so risk is limited, but be aware that following server-provided
pagination URLs means the target can direct subsequent requests; keep the source endpoint trusted/admin-controlled
and, where relevant, constrain which hosts pagination may follow. It has no access-control role. Configure the
paginated feed source.

---

- Add a paginated Feeds HTTP fetcher.
- Follow pagination automatically.
- Retrieve all multi-page items.
- Depend on the Feeds module.
- Serve import/integration.
- Import multi-page APIs.
- Make server-side outbound HTTP requests (SSRF consideration).
- Follow server-provided pagination URLs (the target can direct requests).
- Keep the source endpoint admin-controlled + constrain pagination hosts.
- Have no access-control role.
- Configure the paginated source.
- Handle paginated fetching.
- Follow pagination.
- Configure the fetcher.
- Fetch pages.
- Handle the import.
- Gather items.
- Import feeds.
- Trust the endpoint.
- Provide a paginated fetcher.
