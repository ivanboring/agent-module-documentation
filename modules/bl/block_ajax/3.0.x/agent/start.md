<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Ajax (block_ajax) — agent index

Loads blocks over AJAX after page render. Routes `/block/ajax/{block_id}` plus node, taxonomy-term
and user context variants, all `_permission: 'access content'` and `no_cache: TRUE`.
Core requirement `^10 || ^11`.

> ## Do not expose 3.0.1 — two access failures, both exploited
>
> **1. Entity-context routes have no entity access check.** `loadBlockNodeContext()` passes the
> route's `{node}` straight into `$this->token->replace($renderedBlock, ['node' => $node])`.
> An anonymous request returned an **unpublished** node's title
> (`$node->access('view', anonymous)` verified FALSE):
>
> ```
> $ curl "http://web/block/ajax/tokenprobe/node/4?plugin_id=block_content:…"
> {"content":"… LEAK-START CONFIDENTIAL-UNPUBLISHED-TITLE LEAK-END …"}
> ```
>
> Any node token resolves the same way — `[node:body]`, `[node:field_*]`, `[node:author]`. The
> term and user routes share the pattern; **`[user:mail]` is a token**.
>
> **2. Block visibility is bypassed on the config-entity path.** `getBlockInstance()` checks
> `$block_plugin->access()` on the *plugin* branch only; when the id resolves to a block config
> entity it calls `blockViewBuilder->build()` with no `$block->access()`. A block restricted to
> authenticated users (`Block::access('view')` verified FALSE for anonymous) rendered in full to an
> anonymous request.
>
> Also unfixed: block configuration comes from `$request->get('config')` with no key allow-list,
> and `filterConfiguration()` discards the return value of its recursive call so nested values are
> never `Xss::filter()`ed. Full transcripts in the local `security.md`.

Key facts (the pattern, once patched):
- The idea is sound: one per-user block otherwise makes a whole page uncacheable. Core's
  **BigPipe** and **`#lazy_builder`** solve the same problem without a public rendering endpoint —
  prefer them unless there is a specific reason not to.
- `no_cache: TRUE` on all routes is correct for per-request block rendering.
