<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
JSON:API Cross Bundles adds collection endpoints that span all bundles of an entity type, so a client can fetch all nodes rather than nodes of one type at a time.

---

Core's JSON:API exposes one resource per **bundle**: `/jsonapi/node/article`, `/jsonapi/node/page`, `/jsonapi/node/event`. That is a deliberate and defensible design, because bundles have different fields and a client generally wants to know what shape it is receiving. It becomes awkward for the cases where the bundle genuinely does not matter — a site-wide search result set, a "latest content" feed, a sitemap generator, a migration reading everything, an activity stream mixing types. Without a cross-bundle collection, the client makes one request per bundle and merges them itself, which means it must know the bundle list, must update when a bundle is added, and cannot page or sort across the combined set at all — the last being the real problem, since ten separately-paged lists cannot produce one correct page of results. Version **8.x-1.2** on a core range spanning `^8.7.7` through `^11`, depending on core `jsonapi`. Two things to confirm rather than assume. **Access is per entity and must stay that way**: a cross-bundle collection is a wider net, so the filtering that JSON:API applies per resource has to apply here too, and a bundle the requester may not see must not appear because the collection is aggregate. And **the response shape carries mixed types**, so a client consuming it has to branch on `type` rather than assume a schema — which is exactly the thing core's per-bundle design was protecting against, so it is worth being deliberate that the trade is wanted.

---

- Fetch all nodes regardless of bundle.
- Build a site-wide activity stream.
- Page across mixed content types.
- Sort all content by date in one request.
- Feed a search index from JSON:API.
- Build a latest-content feed.
- Read everything for a migration.
- Avoid one request per bundle.
- Support a decoupled search page.
- Build a sitemap from an API.
- Aggregate mixed media types.
- Support a client that does not know bundles.
- Fetch all taxonomy terms across vocabularies.
- Build a unified content list.
- Support a mobile app's home feed.
- Reduce request count from a client.
- Page correctly across types.
- Read all users regardless of type.
