<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Noindex (node_noindex) — agent index

Per-node checkbox emitting a **`noindex` robots directive**. Permission
`mark content as not indexable`. Declares `php: 8.0`. Version **2.0.1**.
Core requirement `^9 || ^10 || ^11`.

**The distinction that matters and is constantly confused:**
- **`noindex` is not access control.** The page is **fully readable by anyone with the URL** — it
  asks search engines not to list it, and only the compliant ones obey. Anything that must not be
  **read** needs **permissions**.
- **`noindex` is not `robots.txt`, and combining them backfires.** `robots.txt` asks a crawler not to
  **fetch** the page — so **a page blocked in `robots.txt` cannot be seen to carry `noindex`**, and
  can still appear in results as a bare URL. The crawler was told not to look at the very tag
  telling it to stay away. **Use one or the other deliberately.**

**Two further notes:**
- **Removing a page from an index it is already in takes time** — push it through the search
  engine's own removal tools.
- A `noindex` page should not be part of the site's **internal linking strategy**.

**Where it earns its place:** thank-you pages, one-campaign landing pages, deliberate duplicates,
client review pages — all things that should exist and should not be findable, which is an
**editorial** distinction and therefore belongs on the node form.
