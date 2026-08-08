<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Last Visited Pages records the routes a user visits and provides a block that lists the title, URL and time of each recent visit — a per-user "recently viewed" history.

---

A "recently viewed" list is a genuinely useful navigation aid on content-heavy sites: an intranet where people return to the same handful of documents, a catalog where a shopper retraces their steps, a documentation site. This module builds it from an event subscriber that watches the current route and a block plugin that renders the collected history, with an admin setting for how many links to keep.

The thing to be deliberate about is that this is **tracking**, and tracking is a privacy surface. The module is recording, per user, which pages they looked at and when — which is exactly the browsing-history data that carries expectations and, in some jurisdictions, obligations. That is fine and expected for authenticated users on a site where the feature is visible and the benefit is theirs; it deserves a second look before being switched on for a broad audience, and a thought about what happens for anonymous users (who are far more numerous and whose "history" is both less useful and more of a storage and privacy question). Check where the history is stored, how long it is kept, and whether anonymous tracking is wanted at all.

As a feature it is small and self-contained: an event subscriber, a block, a settings form, and cache invalidation so the block stays current.

---

- Show a user their recently viewed pages.
- Add a "recently viewed" block.
- Help users retrace their steps.
- Aid navigation on a large intranet.
- List recent page titles and URLs.
- Show when each page was visited.
- Configure how many links to keep.
- Place the history block in a region.
- Support returning to frequent documents.
- Decide whether to track anonymous users.
- Review where history is stored.
- Review how long history is retained.
- Treat browsing history as a privacy surface.
- Keep the feature visible to those tracked.
- Restrict the block's placement.
- Invalidate the block when routes are visited.
- Offer a catalog "recently viewed" list.
- Limit the history length for performance.
- Reconsider tracking on a public site.
- Give authenticated users a visit history.