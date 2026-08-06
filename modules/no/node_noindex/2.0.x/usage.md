<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node Noindex adds a per-node checkbox that emits a `noindex` robots directive, keeping that page out of search results.

---

Not everything published should be found. A thank-you page reached after a form submission, a landing page built for one campaign's traffic, a duplicate of a page kept for a specific audience, a staging-like page left visible for a client, an internal notice that is public only because making it private was more work — each is a page that should exist and should not appear in a search result, and the distinction is editorial rather than structural, which is why it belongs on the node form. Version **2.0.1** on `^9 || ^10 || ^11`, with a `mark content as not indexable` permission so the setting is a deliberate grant rather than something every editor changes casually. **The distinction that matters and is constantly confused: `noindex` is not access control, and it is not `robots.txt`.** A `noindex` page is fully readable by anyone with the URL — it asks search engines not to list it, and only the ones that choose to comply do. Anything that must not be read needs permissions. And `robots.txt` asks a crawler not to *fetch* a page, which is the opposite mechanism with an important consequence: **a page blocked in `robots.txt` cannot be seen to carry `noindex`**, so a page blocked both ways can still appear in results as a bare URL, because the crawler was told not to look at the very tag telling it to stay away. Use one or the other deliberately. Two further notes: removing a page from an index it is already in takes time and is best pushed through the search engine's own tools; and a `noindex` page still passes link equity nowhere useful, so it should not be part of a site's internal linking strategy.

---

- Keep a thank-you page out of search.
- Exclude a campaign landing page.
- Hide a duplicate page from results.
- Keep an internal notice unlisted.
- Exclude a print version of a page.
- Keep a client review page out of search.
- Exclude a test page from indexing.
- Hide a low-value page from results.
- Keep a form confirmation unlisted.
- Exclude a paginated variant.
- Keep an old campaign page out of search.
- Hide a members-only landing page.
- Exclude a redirect target page.
- Keep a temporary notice unlisted.
- Exclude a staff-facing page.
- Hide a partner-specific page.
- Keep a competition entry page out of results.
- Exclude a page pending review.
