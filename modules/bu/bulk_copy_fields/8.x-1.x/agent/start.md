<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bulk Copy Fields (bulk_copy_fields) — agent index

Action copying values **from one field to another** across selected entities, usable from a Views
bulk operation. Depends on core `action`. Version **8.x-1.0-alpha6** — **alpha**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why the need is constant on a long-lived site:** a plain text field becomes rich text; single
becomes multi-value; two fields consolidate; a field is "renamed", which in Drupal means **creating
a new one and moving the data**, because fields cannot be renamed. The schema change is easy; moving
the content is the work.

**Three cautions — this writes to content in bulk:**
1. **Field types must be compatible, and the interesting failures are partial.** Rich text into
   plain **loses markup silently**; multi-value into single **keeps the first delta and discards the
   rest** without saying so.
2. **Run it on a copy first.** There is no undo, and the previous values are gone unless revisions
   were being kept.
3. **Saving entities in bulk fires everything that hooks entity save** — search reindexing, cache
   invalidation, workflow transitions, outbound webhooks. A copy across ten thousand nodes is a much
   larger operation than it looks.
