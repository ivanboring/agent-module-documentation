<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prism integrates the Prism.js syntax highlighter, colouring code blocks by language.

---

Prism is the other common choice alongside Highlight.js, and the difference between them is worth knowing when choosing. **Prism** is built around explicit language declaration — a `language-php` class on the `<code>` element — and around plugins for line numbers, line highlighting, copy-to-clipboard and diff rendering. **Highlight.js** leans on automatic language detection and ships a very large default build. So Prism suits a site whose code blocks come from an editor that can record the language, and its plugin set covers what documentation actually needs: line numbers to reference in prose, a highlighted line to draw attention, and a copy button, which is the single most appreciated feature on any page containing a command. Version **2.2.3** on core `^10 || ^11`. Three practical points, the same three that apply to any highlighter. **Build only the languages the site uses** — Prism's builder exists precisely because the full grammar set is large, and a documentation site loading two hundred grammars for five is one of the most common unnecessary payloads on the web. **Highlighting must not alter the code**: the reader's copy-paste has to produce exactly what the author wrote, which is why the copy plugin is worth enabling rather than trusting selection. And **where the library comes from** — a CDN copy is a third-party request on every page plus a CSP allowance, a local copy means the site owns updates, and `libraries_provider` exists to make that a site decision.

---

- Highlight code blocks by language.
- Add line numbers to a code sample.
- Add a copy button to commands.
- Highlight a specific line in a snippet.
- Improve documentation readability.
- Show a diff with colouring.
- Publish a developer tutorial.
- Highlight configuration examples.
- Support a knowledge base's code.
- Colour shell commands.
- Improve a technical blog's presentation.
- Highlight a template example.
- Show an API request and response.
- Add syntax colouring to a changelog.
- Support a training site's materials.
- Highlight SQL in an article.
- Improve a code-heavy article.
- Add a language label to blocks.
