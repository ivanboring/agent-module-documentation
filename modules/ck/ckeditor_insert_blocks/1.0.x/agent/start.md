<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Insert Blocks (ckeditor_insert_blocks) — agent index

Places a **Drupal block into body content** from the editor toolbar. Version **1.0.3**.
Core requirement `^10 || ^11`.

**Why it beats pasting markup:** the block stays a **reference**, rendered at display time, so
updating it updates every article embedding it. (The structured alternatives — a paragraph type or
Layout Builder — are better designed and a larger change to how the site is built.)

**The gate deserves more weight than a WYSIWYG button usually gets:**
- **a block renders arbitrary markup and can attach JavaScript libraries**, so placing any block
  into body text is closer to a **site-building** capability than an editing one;
- **a views block runs a view inside the article**, with its own access and filters — correct, and
  it means the result **varies by viewer**, so the host content's **cache metadata must account for
  it** or one visitor's results are cached for everyone;
- **which blocks the button offers is the real control** — an unrestricted list of every block on
  the site is a far larger grant than a curated set. **Check that first.**

Grant it to the people who would otherwise be placing blocks in block layout.
Compare **`ck5_block_embed`** (wave 77), which does the same job behind an explicit permission.
