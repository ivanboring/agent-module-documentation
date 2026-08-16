# Block Ajax — manual setup guide

**Block Ajax** (`block_ajax`) loads blocks over AJAX after the page has already
rendered. The point is caching: on a cached site, a single block that varies per
user — a basket total, a personalized greeting, a live count — normally drags the
whole page out of the page cache. Rendering that one block separately, after load,
lets the page stay cacheable and moves the small cost to a lightweight request.

The module provides routes at `/block/ajax/{block_id}`, plus variants that render a
block in the context of a node, taxonomy term, or user. They return the rendered
block markup as JSON, and are marked not to cache, which is correct for per-request
block rendering.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

## Security warning — do not expose the 3.0.1 release as-is

This is the most important thing to know about this module. Review of the **3.0.1**
release found two confirmed access-control failures, both reproduced with
anonymous, unauthenticated requests:

1. **The entity-context routes perform no entity access check.** The node/term/user
   passed in the URL is fed straight into token replacement, with no
   "can this visitor view it?" check. An anonymous request was able to read an
   **unpublished** node's title through a `[node:…]` token — and the same applies to
   `[node:body]`, `[node:field_*]`, `[node:author]`, and, on the user route,
   `[user:mail]`.
2. **Block visibility is bypassed on the block-config-entity path.** A block
   restricted to authenticated users rendered in full to an anonymous caller,
   because the access check runs on one code path but not the other.

On top of those, block configuration is taken from the request with no allow-list of
keys, and a filtering routine only sanitizes top-level values (nested values are
left unfiltered). Full, reproduced detail is in the module's
[`security.md`](../security.md) and the [`agent/`](../agent/start.md) notes.

**Do not expose this on a public or multi-user site until these are addressed.** The
underlying idea is sound, but Drupal core solves the same problem without a public
rendering endpoint — prefer core's **BigPipe** or a **`#lazy_builder`** unless you
have a specific reason not to.

## Where it lives in the admin menu

There is no settings page and no admin form. The module works entirely through its
AJAX routes (`/block/ajax/{block_id}` and the node/term/user context variants),
which are gated only by the **Access content** permission.
