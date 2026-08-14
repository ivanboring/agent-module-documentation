<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN Dataset RSS feed exposes the site's DKAN datasets as an RSS 2.0 XML feed.

---

A controller serves `GET /datasets.rss` (permission `access content`) and returns `application/rss+xml`. The `DkanRssCreator` service reads all datasets from the metastore storage, maps each dataset's metadata onto RSS `<item>` elements according to a configurable RSS schema (`dataset.rss.feed.json`, retrievable/overridable via a `SchemaRetriever`), applies formatters (e.g. RFC-2822 dates), optional sorting and an optional item limit, then serializes the result with Symfony's XML encoder. A block plugin (`RssLinkBlock`) renders a link to the feed.

Operational/security note: `/datasets.rss` is gated only by `access content`, which anonymous users hold by default, so the feed is public — appropriate for an open-data catalog, but be aware it iterates `storage->getInstance('dataset')->retrieveAll()`, so confirm your metastore only returns published datasets if any drafts are non-public. Setup: enable the module, optionally provide/override the RSS schema JSON, and place the RSS Link block or link to `/datasets.rss`.

---
- Publish a public RSS feed of all datasets at `/datasets.rss`.
- Let data consumers subscribe to new/updated datasets.
- Map dataset metadata to RSS item fields via a JSON schema.
- Override the RSS field mapping with your own schema file.
- Format dataset dates as RFC-2822 for valid RSS.
- Sort feed items ascending/descending or by date.
- Limit the number of items in the feed.
- Add a self-referencing atom:link for validator compliance.
- Link each item to its dataset node canonical URL.
- Place an RSS Link block pointing at the feed.
- Syndicate open data to aggregators and portals.
- Provide machine-readable dataset updates to partners.
- Validate the feed against the W3C RSS validator.
- Fall back to the bundled schema if none is configured.
- Serve the feed with the correct `application/rss+xml` type.
- Expose new datasets to search-engine feed crawlers.
- Feed dataset metadata into external dashboards.
- Confirm only published datasets appear before going public.
