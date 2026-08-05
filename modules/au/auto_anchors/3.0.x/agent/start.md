<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Automatic Anchors (auto_anchors) — agent index

Generates `id` attributes on chosen elements (usually headings) so any section can be linked to
directly. Settings behind `administer automatic anchors` (`restrict access: true`);
`show automatic anchor links` displays the visible permalink control.
Version **3.0.0-beta1** — **beta**. Core requirement `^10.1 || ^11`.

**Why nothing else provides this:** a WYSIWYG produces `<h2>Refunds</h2>` with no attributes, and
asking editors to add anchors by hand yields some pages with them and most without. Deep links are
what support staff, documentation cross-references and tables of contents all need.

**Two things determine whether the links keep working — both about stability:**
1. **An id derived from heading text changes when the heading is edited**, so every link anyone
   shared **breaks silently**. That is the central trade of this approach. For long-lived content,
   prefer a stable derivation, or keep old ids alongside new ones.
2. **Ids must be unique on the page.** Two sections called "Overview" collide, and the deduplication
   rule (usually a numeric suffix) means which one a link lands on depends on **document order** —
   so inserting a new section can quietly redirect an existing link.
