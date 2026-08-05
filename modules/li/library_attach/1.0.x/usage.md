<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Library attach lets content declare which asset libraries the page needs, through a text-format filter, so a snippet that requires a script gets it without the theme loading it everywhere.

---

The problem shows up on any site where content carries interactive markup. One article contains a chart, three pages need a map, a landing page uses a lightbox — and the library those depend on has to be attached from somewhere. The blunt answer is loading it in the theme on every page, which is a payload the other nine hundred pages do not need. The clean answer is a custom formatter or a paragraph type per case, which is right and is a development task for each. A filter that reads a marker in the content is the pragmatic middle: content declares its own dependency and the asset system does the rest, keeping the library inside Drupal's aggregation and dependency ordering rather than a `<script>` tag pasted into the body. Version **1.0.1** on core `^10 || ^11`, depending on core `filter`. **The security consideration is what the filter's configuration is worth**, and it needs saying plainly: attaching a library means loading JavaScript, so whoever can put the marker in content can cause a script to run on the page. Which libraries are attachable must therefore be an allow-list set by an administrator, not a name taken from the content — a filter that attaches whatever library the text names hands script-loading to anyone who can edit a body field. Confirm which this does before enabling it on a format that non-trusted users can use, and treat the filter's configuration as an administrative surface either way.

---

- Load a chart library on one article.
- Attach a map library where it is used.
- Avoid loading a library site-wide.
- Let content declare its dependencies.
- Attach a lightbox for one page.
- Reduce payload on pages that do not need it.
- Keep libraries in the asset pipeline.
- Avoid pasting a script tag in content.
- Attach a slider library per node.
- Support an occasional interactive embed.
- Load a syntax highlighter on doc pages.
- Attach a library from a WYSIWYG.
- Support editor-built interactive content.
- Reduce theme-level asset bloat.
- Attach a font only where used.
- Load an animation library selectively.
- Support a one-off campaign page's assets.
- Keep aggregation working for content assets.
