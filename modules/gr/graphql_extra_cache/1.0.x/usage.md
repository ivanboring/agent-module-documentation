<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GraphQL Extra Cache adds caching to GraphQL responses beyond what the GraphQL module provides, with the module's own description reading "Cache all the things".

---

GraphQL's flexibility is exactly what makes it hard to cache. A REST endpoint has a URL that identifies its response, so a proxy or a page cache can key on it; a GraphQL request is a POST whose body describes an arbitrary selection, so two clients asking related questions produce different requests with overlapping answers, and nothing outside the application can tell that. The caching therefore has to happen inside, keyed on the query and its variables, and invalidated by Drupal's cache tags — which is the right mechanism, because a tag invalidated when a node is saved reaches every cached response containing that node without anyone enumerating them. Version **1.0.5** on `^8` through `^11`, requiring `graphql` and `graphql_core_schema`. **The correctness risk in any response cache is the same and it is severe: a response cached without the contexts it varies by is served to the wrong person.** A GraphQL query resolving fields the current user may see produces a user-specific answer, so the cache key must include what the resolution depended on — and unlike a page cache, where Drupal's own machinery collects contexts as the render tree is built, a GraphQL resolver has to propagate them deliberately. That makes the question to ask concrete: does a query touching access-controlled data cache per user, and does an anonymous request ever receive a cached response produced for an authenticated one? Verify with a query that returns unpublished content for an editor and nothing for anonymous, in that order and then reversed.

---

- Cache GraphQL responses.
- Speed up a decoupled front end.
- Reduce repeated resolver work.
- Invalidate GraphQL caches by tag.
- Improve a headless site's performance.
- Cache a common query's result.
- Reduce database load from GraphQL.
- Speed up a Nuxt or Next.js front end.
- Cache a navigation query.
- Improve response times for an app.
- Reduce resolver execution.
- Cache a listing query.
- Support a high-traffic decoupled site.
- Reduce API latency.
- Cache expensive nested queries.
- Improve build times for a static site.
- Reduce load from a mobile client.
- Speed up repeated GraphQL requests.
