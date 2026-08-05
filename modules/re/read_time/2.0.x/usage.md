<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Read time calculates and displays how long content will take to read — the "5 min read" line that has become standard on articles.

---

The label does a small amount of real work: it sets expectations before someone starts, and readers use it to decide whether to read now or save for later, which is why publishing platforms adopted it almost universally. Calculating it is a word count divided by an assumed reading speed, and the value of a module rather than a snippet is that the calculation is consistent, configurable and available wherever content is rendered rather than only where somebody remembered to add it. This module handles that, with configuration schema for the settings and a wide core range of `^8.8 || ^9 || ^10 || ^11`; the release is **2.0.0-beta4**. Two things worth knowing when configuring it. The assumed words-per-minute is a **convention rather than a measurement** — the common figures of 200–250 wpm come from studies of adult reading of prose, and technical content, tables and code read far more slowly, so a documentation site's estimates will be optimistic. And what counts as a word matters: whether images, captions and embedded media contribute to the estimate changes the answer noticeably on a picture-heavy article.

---

- Show "5 min read" on an article.
- Set reader expectations before they start.
- Help readers decide what to read now.
- Display reading time in a teaser.
- Add reading time to a listing.
- Configure assumed reading speed.
- Show reading time in an RSS description.
- Improve engagement on long-form content.
- Give a blog a familiar convention.
- Display reading time per content type.
- Reduce bounce on long articles.
- Show read time in a card component.
- Support a documentation site's navigation.
- Add reading time to search results.
- Signal article length consistently.
- Improve a magazine-style listing.
- Show read time on a mobile teaser.
- Support a newsletter's article list.
