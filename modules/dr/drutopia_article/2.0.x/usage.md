<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provides an Article content type and related configuration for time-sensitive content like news, press releases and blog posts.

---

Sites built on the Drutopia distribution need a ready-made, SEO-aware article/news content type without hand-building fields and displays. This feature supplies exactly that: a themed Article node type with body, summary, image/media, authors, topics and article-type taxonomy, plus facets and a Search API index for filtering.

As a Drutopia base feature it is config-only: enabling it installs the `article` content type, its fields, form and view displays (default/teaser/card/full and more), a `article_type` classification vocabulary, a Views-based listing, a Pathauto URL pattern, Metatag/SEO defaults, and comment/facet/search configuration where applicable. It ships no PHP routes, controllers, services or permissions of its own — access is governed entirely by core node permissions and the Drutopia editorial roles (contributor/editor/manager) it augments via `config/actions`. Editors add content from the listing's "Add" action link; site builders customise the installed config like any other content type.

---
- Add a news/press-release article content type to a Drutopia site
- Publish time-sensitive articles with a summary and body
- Attach a focal-point-cropped image or responsive media to articles
- Classify articles with the article_type vocabulary
- Tag articles with free-tagging topics/tags
- Reference author (people) entities from an article
- Browse an article listing view with an 'Add article' action
- Facet the article listing by type and topics
- Index articles in Search API for site search
- Auto-generate SEO-friendly URL aliases via Pathauto
- Emit Metatag/RDF metadata for articles
- Add comments to articles (via drutopia_comment)
- Show article teaser, card, box and full view displays
- Compose article bodies from paragraphs
- Grant contributor/editor/manager roles article permissions
- Provide an RSS view display for articles
- Use articles as related-content sources by shared taxonomy
