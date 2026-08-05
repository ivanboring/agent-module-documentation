<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image WebP Converter (image_webp_converter) — agent index

Converts **already-uploaded source images** to WebP and **rewrites the references** that point at
them. Depends on core `file` and `image`. Permissions: `convert images to webp`, plus
`administer image webp converter settings` (`restrict access: true`). Version **1.0.1**.
**Core requirement is written `^10 | ^11`** — a single pipe, not valid Composer OR syntax. Worth
checking it behaves as intended.

**Know the alternative first.** Drupal can already produce WebP **derivatives** through image
styles — that covers rendered images, leaves originals untouched, and is the right approach for
most sites. **This converts the sources**, which reduces stored size too and **is not reversible**.

**Three things to plan before running it:**
1. **It edits content.** Rewriting references means writing to entities — **back up and run on a
   copy first**. A missed reference is a broken image; a wrongly rewritten one is a wrong image.
2. **Originals are the archive.** An uploaded photograph is often the organisation's only copy —
   converting rather than deriving **discards the original permanently**. Decide per field, not
   site-wide.
3. **Externally held URLs do not update.** Anything linking directly to an image file — an email, a
   PDF, another site, a search index — points at a filename that no longer exists.
