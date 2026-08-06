<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API Cross Bundles (jsonapi_cross_bundles) — agent index

Adds **collection endpoints spanning all bundles** of an entity type. Depends on core `jsonapi`.
Version **8.x-1.2**. Core requirement `^8.7.7 || ^9 || ^10 || ^11`.

**Why core does not do this:** JSON:API exposes one resource **per bundle**
(`/jsonapi/node/article`, `/jsonapi/node/page`) — deliberate, because bundles have different fields
and a client generally wants to know what shape it is receiving.

**Why it is awkward:** for a site-wide search result set, a latest-content feed, a sitemap
generator, a migration or an activity stream, the client must make one request per bundle, **know
the bundle list**, **update when a bundle is added**, and **cannot page or sort across the combined
set at all**. That last is the real problem — ten separately-paged lists cannot produce one correct
page of results.

**Two things to confirm rather than assume:**
1. **Access is per entity and must stay that way.** A cross-bundle collection is a wider net — a
   bundle the requester may not see **must not appear** because the collection is aggregate.
2. **The response carries mixed types**, so a client must branch on `type` rather than assume a
   schema — which is what core's per-bundle design was protecting against. Be deliberate that the
   trade is wanted.
