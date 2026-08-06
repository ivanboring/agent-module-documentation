<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GraphQL Extra Cache (graphql_extra_cache) — agent index

Additional caching for **GraphQL** responses. Requires `graphql` and `graphql_core_schema`. Its own
description: *"Cache all the things"*. Version **1.0.5**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why GraphQL is hard to cache:** a REST endpoint has a **URL that identifies its response**, so a
proxy or page cache can key on it. A GraphQL request is a **POST whose body describes an arbitrary
selection** — two clients asking related questions produce different requests with overlapping
answers, and nothing outside the application can tell. So caching must happen **inside**, keyed on
query + variables and invalidated by **Drupal cache tags** — which is right, because a tag
invalidated on node save reaches every cached response containing that node without enumerating
them.

**The correctness risk is the same as any response cache and it is severe: a response cached without
the contexts it varies by is served to the wrong person.**
- A query resolving fields the current user may see produces a **user-specific answer**.
- Unlike a page cache — where Drupal collects contexts as the render tree is built — **a GraphQL
  resolver must propagate them deliberately**.

**Verify concretely:** a query returning unpublished content for an editor and nothing for
anonymous — run it in that order, then reversed, and check both answers.
