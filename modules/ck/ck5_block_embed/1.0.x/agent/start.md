<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 block embed (ck5_block_embed) — agent index

Toolbar button inserting **content blocks, view blocks and the active theme's region blocks** into
body text. Depends on core `ckeditor5`. Gated by **`use ck5 block embed button`**.
Version **1.0.3**. Core requirement `^10 || ^11`.

**That permission deserves more weight than its title suggests — understand this before granting
it:**
- embedding a **view block** runs a view inside the article, with the view's own access and filters
  (correct — and it means the result **varies by viewer**, so the article's **cache metadata must
  account for it**);
- embedding a **region block** places whatever is in that region — **site chrome under someone
  else's control**;
- **blocks render arbitrary markup and attach libraries**, so placing any block into body text is
  closer to a **site-building** permission than an editing one.

Grant it to the people who would otherwise be placing blocks in block layout, and **check which
blocks the button actually offers** — an unrestricted list is a much larger grant than a curated
one.

**Why it beats the unstructured alternative:** the block stays a **reference**, rendered at display
time, so updating it updates every article that embeds it. (The structured alternatives — a
paragraph type or Layout Builder — are better designed and a larger change to how the site is
built.)
