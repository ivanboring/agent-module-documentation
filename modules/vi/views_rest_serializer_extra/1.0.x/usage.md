<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Results Serializer Extra adds a Views style for REST Export displays that includes metadata alongside the results — total count, pager information and similar — rather than returning a bare array of rows.

---

A Views REST Export returns exactly the rows, which is enough for a simple list and not enough to build a UI. A front end paginating results needs to know how many there are in total and how many pages that implies, and with a bare array it has to either request everything to count it or guess. Every mature API returns that metadata in an envelope for exactly this reason — JSON:API does it, and this brings the same shape to Views REST Export displays. It is a Views style plugin, so it is chosen in place of the standard serializer on the display and everything else about the view is unchanged; dependencies are core `rest` and `serialization`, with core `^9 || ^10 || ^11`. Worth noting for a consumer: adding an envelope **changes the response shape**, so it is a breaking change for anything already parsing the bare array — version the endpoint or coordinate the change. And the total count implies a count query, which on a large or expensive view is not free.

---

- Return a total result count with a Views export.
- Give a front end pager metadata.
- Build pagination without fetching everything.
- Return results in an envelope.
- Match JSON:API's response shape.
- Show "showing 10 of 250" in a client.
- Support infinite scroll in a front end.
- Provide page count to an app.
- Improve a decoupled listing.
- Add metadata to a REST Export.
- Support a search results API.
- Give consumers what they need to paginate.
- Reduce client-side guesswork.
- Feed a mobile app's list view.
- Support a filtered API listing.
- Return metadata alongside rows.
- Improve an integration's usability.
- Standardise API response structure.
