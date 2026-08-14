<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN Dataset RSS feed (dkan_rss) — agent index

**Serves a schema-mapped RSS 2.0 feed of DKAN datasets at `/datasets.rss`.**

- **Version:** 1.0.x · **Core:** ^10 || ^11 · **Depends on:** dkan (metastore)
- **Route:** `dkan_rss.dataset_rss` → `GET /datasets.rss`, `_permission: access content`, `Content-Type: application/rss+xml`.
- **Services:** `dkan_rss.rss_creator.service` (`DkanRssCreator`) maps datasets to RSS via `dataset.rss.feed.json`; `dkan_rss.schema_retriever.service` loads/overrides that schema.
- **Block:** `dkan_rss_rss_link` renders a link to the feed.
- **Security observation:** `/datasets.rss` is gated only by `access content` (granted to anonymous by default), so the feed is public — expected for open data, but it renders `storage->getInstance('dataset')->retrieveAll()` (`DkanRssCreator.php:214` `retrieveDatasets`), so verify the metastore excludes unpublished/draft datasets before relying on it publicly. No mutating endpoints.
