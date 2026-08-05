<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Results Serializer Extra (views_rest_serializer_extra) — agent index

Views **style plugin** for REST Export displays that wraps results with metadata (total count,
pager). Depends on core `rest` and `serialization`. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Chosen as the style on the REST Export display, so nothing else about the view changes.
- **It changes the response shape.** Wrapping rows in an envelope is a **breaking change** for any
  consumer already parsing the bare array — version the endpoint or coordinate the switch.
- **A total count implies a count query**, which is not free on a large or expensive view. Check
  the query cost before enabling it on a heavy listing.
- Solves a genuine gap: a bare array gives a front end no way to paginate without fetching
  everything. JSON:API returns this metadata natively; this brings the same to Views exports.
