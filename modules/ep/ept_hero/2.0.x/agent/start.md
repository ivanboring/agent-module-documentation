<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Hero (ept_hero) — agent index

Ready-made **Hero paragraph type** — title, description, buttons. Requires `ept_core`,
**`ept_basic_button`** and `paragraphs`. Version **2.0.1**.
Core requirement `^10.1 || ^11 || ^12`.

**The `ept_basic_button` dependency is the detail worth noting** — buttons are a **shared
component** rather than a link field styled by hope, which is what keeps them consistent between the
hero and everything else.

**Same family trade as `ept_tiles` / `ept_slideshow` / `ept_carousel` / `ept_tabs`:**
- pre-built is quick to adopt and **awkward to diverge from** — the markup and field structure are
  the module's, so an uncovered design means template overrides, at which point a local type is
  often cheaper;
- **it becomes a dependency of the content** — removing the module later leaves paragraph entities
  with no type.

**One check specific to heroes that no module can do for you: the heading level.** A hero's title is
usually the page's `h1` — and a hero placed **mid-page** is not. A component that hard-codes its
heading level produces either **two `h1`s** or a document outline that **skips**.
