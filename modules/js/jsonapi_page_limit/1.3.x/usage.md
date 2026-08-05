<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
JSON:API Page Limit changes the maximum number of items JSON:API will return in one response, per route.

---

JSON:API caps a collection response at 50 items by default, and the cap exists for good reasons — an unbounded page size is a denial-of-service lever and a memory risk, since every item is loaded, access-checked and serialised. But 50 is a single number applied to every resource, and a decoupled front end that needs a taxonomy of 200 terms to build a filter panel has to make four requests for something that should be one, while a resource with large, expensive items might reasonably be capped lower. This module makes the limit configurable per route so those cases can be handled individually rather than by raising a global ceiling. It depends on core `jsonapi` and targets `^10 || ^11`. The judgement to make is where the cost lands: a raised limit means more entities loaded, access-checked and serialised in one request, so the right ceiling is the one the site's slowest resource can serve within its timeout — raise it for the small, cheap collections that need it, not globally, and measure rather than assume.

---

- Return a full taxonomy in one API request.
- Reduce round trips for a decoupled front end.
- Raise the page limit for a small resource.
- Lower the limit for an expensive resource.
- Fetch a filter panel's options at once.
- Tune pagination per route.
- Reduce requests during a build step.
- Support a static site generator's fetch.
- Improve a mobile app's start-up.
- Avoid a global limit increase.
- Fetch a menu structure in one call.
- Reduce API chatter.
- Support a bulk export via API.
- Balance response size against timeouts.
- Optimise a specific integration.
- Fetch reference options efficiently.
- Reduce front-end pagination logic.
- Tune API performance deliberately.
