<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Seeds Editor is the editor layer of the Seeds distribution: a pre-assembled CKEditor 5 configuration with text formats, media embedding, link enhancement and right-to-left support already wired together.

---

Assembling a good CKEditor 5 experience in Drupal is mostly integration work. You want Linkit for internal links, Entity Embed for media, `editor_advanced_link` for link attributes, a plugin pack for the toolbar buttons core leaves out, responsive tables, media resizing, Blazy for lazy images, Smart Trim for teasers, and Allowed Formats to stop editors picking the wrong one. Each is a separate module with its own configuration, and getting them to agree takes a while.

This module is that assembly, done once. Its dependency list is the honest description of what it is: **seventeen modules**, most of them contrib. Enabling it pulls in the whole set and applies a configuration that expects them all to be present.

That is the trade to weigh. On a Seeds site, or a new build that wants a known-good editor out of the box, it saves real time and gives every environment the same setup. On an existing site with its own text formats, it is a large and opinionated footprint that will want reconciling with what is already there — and seventeen dependencies is seventeen upgrade paths.

RTL handling is the piece that is genuinely hard to retrofit and is included here (`ckeditor_bidi`), which is worth noting if the site has Arabic, Hebrew or Persian content.

A single permission, `administer seeds editor`, gates its settings page.

---

- Get a complete CKEditor 5 setup in one enable.
- Standardise editor configuration across environments.
- Add Linkit-powered internal linking.
- Embed media with Entity Embed.
- Handle right-to-left content in the editor.
- Add link attributes with editor_advanced_link.
- Add responsive tables to the editor.
- Resize media inside the editor.
- Lazy-load editor images with Blazy.
- Restrict which text formats a field offers.
- Trim teaser text intelligently.
- Start a new site with a known-good editor.
- Build a Seeds distribution site.
- Weigh seventeen dependencies before adopting.
- Reconcile with existing text formats before enabling.
- Restrict configuration with administer seeds editor.