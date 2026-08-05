<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Published and corrected dates (published_corrected_date) — agent index

Adds **first-published** and **corrected** date properties to nodes. Depends on core `node`.
Core requirement `^10 || ^11`.

Key facts:
- **Why core is not enough:** `created` is when the node was made (possibly long before
  publication); `changed` moves on *every* save — a typo fix, a taxonomy tweak, a bulk operation.
  Neither answers "when was this published" or "when was it corrected".
- **Contrast `preserve_changed_ui` (wave 58):** that suppresses `changed` on a trivial edit — the
  same problem solved by hiding movement. This adds separate honest fields, so `changed` can move
  freely while the *displayed* dates stay meaningful. For a publisher the second is usually right:
  a correction date is editorial information that should be set deliberately, not inferred.
- Relevant to structured data and news SEO, where `datePublished` and `dateModified` are consumed
  literally.
- No routes, permissions or configuration pages — the dates are node properties.
