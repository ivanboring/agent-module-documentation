<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Highlight Js syntax highlighter adds a code-block plugin to CKEditor 5 with syntax highlighting rendered by Highlight.js.

---

Any site that publishes code — documentation, a developer blog, a knowledge base, a tutorial series — needs code to look like code, and the two halves of that are an editor that can insert a code block with a language, and a renderer that colours it. Highlight.js is the common choice for the second: it detects or is told the language and applies a theme, supporting a very large set of languages out of the box. This module joins the two, depending on core `ckeditor5`, version **1.3.0** on `^9 || ^10 || ^11`, with an `administer highlight_js configuration` permission correctly marked `restrict access: TRUE`. Three practical points. **Load only the languages the site uses**: the full Highlight.js build covers nearly two hundred languages and is large, while a build with the five a site actually publishes is a fraction of the size — this is one of the most common unnecessary payloads on documentation sites. **Highlighting must not change the code**: an editor's copy-paste has to yield exactly what the author wrote, so the markup should wrap tokens rather than alter whitespace or insert characters. And **where the library comes from** is the recurring question with any front-end library — a CDN copy means a third-party request on every page and a CSP allowance, a local copy means the site owns the update; `libraries_provider` documented in this campaign exists precisely to make that a site decision rather than the module's.

---

- Publish code samples with highlighting.
- Add a code block to CKEditor 5.
- Improve a documentation site's code display.
- Highlight a configuration example.
- Show a shell command clearly.
- Support a developer blog.
- Add language selection to code blocks.
- Highlight YAML in a tutorial.
- Improve readability of long snippets.
- Publish an API example.
- Show a diff in an article.
- Support a knowledge base's code content.
- Add a code theme matching the site.
- Highlight PHP examples.
- Improve technical article presentation.
- Support a training site's materials.
- Show SQL queries formatted.
- Publish a code-heavy changelog.
