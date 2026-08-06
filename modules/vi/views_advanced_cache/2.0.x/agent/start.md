<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Advanced Cache (views_advanced_cache) — agent index

Views **cache plugin** exposing **cache tags, cache contexts** and output/results caching as
configuration. Depends on core `views`. Version **2.0.2**. Core requirement `^10.3 || ^11`.

**What Views gives instead:** time-based caching — the crudest answer, producing both complaints.
Too short and the cache does nothing; too long and the listing shows deleted content.

**Drupal's own model, which Views does not expose:**
- **cache tags** invalidate exactly when the named thing changes — a view tagged `node_list` is
  correct the instant an article is saved, and cached indefinitely otherwise;
- **cache contexts** declare what the result **varies by**.

**The risk is entirely on the contexts side, and it is severe — getting it wrong is not a
performance bug.** A view depending on the current user (ownership, group membership, role, or
simply subject to node access) **must** declare the contexts that capture that. Omit them and the
first visitor's results are **stored and served to everyone** — a disclosure, not a stale page.

**Tags are the forgiving half:** a missing tag means stale content, which is visible and
embarrassing. **A missing context means one user seeing another's, which is neither.**

**Working rule: be generous with tags, exact about contexts** — and test with two accounts that
should see different results, **in both orders**.
