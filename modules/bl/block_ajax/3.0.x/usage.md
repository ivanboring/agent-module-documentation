<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Ajax loads blocks over AJAX after the page has rendered, so a block whose content is personalised or expensive does not make the whole page uncacheable.

---

The problem is familiar on any cached site: one block that varies per user — a basket total, a greeting, a live count — drags the entire page out of the page cache. Rendering that block separately after load keeps the page cacheable and moves the cost to a small request. This module provides that: routes at `/block/ajax/{block_id}` and three entity-context variants for node, taxonomy term and user, returning rendered block markup as JSON, with `no_cache: TRUE` so responses are not cached. Block configuration can be supplied per request, and `src/Controller/AjaxBlockController.php` holds the logic. **The 3.0.1 release should not be exposed as it stands**: this campaign confirmed by experiment that the entity-context routes perform no entity access check — an anonymous request returned an unpublished node's title through token replacement — and that the block-config-entity path performs no block access check, so a block restricted to authenticated users rendered for an anonymous caller. Both are recorded with transcripts in the local security notes, along with the request-controlled block configuration and a filtering bug beneath them. The pattern the module implements is sound; core's BigPipe and lazy builders achieve it without a public rendering endpoint.

---

- Load a personalised block after page render.
- Keep a page cacheable despite one dynamic block.
- Refresh a block without reloading the page.
- Show a basket total on a cached page.
- Load an expensive block lazily.
- Update a live counter periodically.
- Render a block in the context of a node.
- Defer below-the-fold block rendering.
- Improve time to first byte.
- Show a greeting on an anonymous-cached page.
- Reduce cache fragmentation.
- Refresh a block after a user action.
- Load a block in a taxonomy term context.
- Improve Core Web Vitals.
- Avoid BigPipe for a simple case.
- Reload a block on demand.
- Serve a dynamic block from a static page.
- Reduce origin load behind a CDN.
