<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Attach Inline (attachinline) — agent index

Attaches **inline JS/CSS snippets** to a render array without declaring a library. Implemented by
decorating the **asset resolver** (`AssetResolverDecorator` + its own `AttachedAssets`), so inline
snippets travel through the normal asset machinery rather than around it. No dependencies, routes
or permissions. Version **8.x-1.8**. Core requirement `^10 || ^11`.

**The gap it fills:** Drupal's asset system requires every asset to come from a declared library —
which buys aggregation, dependency ordering, cache correctness and one auditable place. It is
awkward only for a snippet with no meaningful existence as a reusable library. D7's
`drupal_add_js($js, 'inline')` did this in one line; without a replacement people paste a
`<script>` tag into markup, bypassing the pipeline and every protection in it.

**Use with the discipline the library system otherwise enforces:**
- an inline snippet is **not aggregated and not separately cached** — it is paid for on every
  render of that element;
- **never build a snippet by concatenating request or content data.** Inline JavaScript is the
  classic XSS delivery point; the risk starts the moment a snippet is assembled from a variable
  rather than written as a constant.
