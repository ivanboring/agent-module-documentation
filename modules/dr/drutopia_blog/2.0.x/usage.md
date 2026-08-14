<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provides a Blog content type and related configuration for personal or journal-like posts.

---

Drutopia sites want a distinct blog/journal post type separate from news articles. This feature installs a Blog content type with body, summary, media image, authors and topics, wired to comments, facets, Search API and SEO defaults so bloggers can post immediately.

As a Drutopia base feature it is config-only: enabling it installs the `blog` content type, its fields, form and view displays (default/teaser/card/full and more), a `(shared topics/tags)` classification vocabulary, a Views-based listing, a Pathauto URL pattern, Metatag/SEO defaults, and comment/facet/search configuration where applicable. It ships no PHP routes, controllers, services or permissions of its own — access is governed entirely by core node permissions and the Drutopia editorial roles (contributor/editor/manager) it augments via `config/actions`. Editors add content from the listing's "Add" action link; site builders customise the installed config like any other content type.

---
- Add a blog/journal content type to a Drutopia site
- Write journal-style posts with body and summary
- Attach a responsive media image to a blog post
- Reference author (people) entities on posts
- Tag posts with topics for faceted browsing
- Browse the blog listing view with an 'Add blog' action
- Enable comments on blog posts (via drutopia_comment)
- Index blog posts in Search API
- Auto-generate URL aliases via Pathauto
- Emit Metatag SEO metadata for posts
- Show teaser/card/full view displays for posts
- Compose post bodies from paragraphs
- Grant editorial roles blog permissions
- Menu-enable blog posts via menu_ui
- Use blog posts as related-content sources
- Facet the blog listing by topic
