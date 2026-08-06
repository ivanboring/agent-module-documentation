<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prism Js syntax highlighter adds a CKEditor 5 code block backed by PrismJS, giving editors a way to insert code with a language and have it coloured on the page.

---

This is the second Prism integration in this campaign and the distinction between them is worth keeping straight: `prism` (wave 77) integrates the library for rendering, while this one is specifically the **CKEditor 5 plugin plus the renderer**, so the editor side and the display side come from the same module. For a documentation site that matters, because the two halves have to agree about which language a block is in — an editor choosing "PHP" in a dropdown and a renderer detecting the language from the content are different mechanisms, and only the first is reliable. Version **1.1.4** on `^9 || ^10 || ^11`, depending on core `ckeditor5`, with settings at its own route. Three practical points, the same three for any highlighter. **Build only the languages the site uses** — PrismJS's builder exists precisely because the full grammar set is large, and a documentation site shipping two hundred grammars for five is one of the most common unnecessary payloads on the web. **Highlighting must not alter the code**: a reader copies what they see, so the markup should wrap tokens and never change whitespace or insert characters — which is why Prism's copy-to-clipboard plugin is worth enabling rather than trusting selection. And **where the library comes from** is a site decision: a CDN copy is a third-party request per page plus a CSP allowance, a local copy means the site owns updates, and `libraries_provider` exists to make that configurable rather than the module's choice. Pairs with `codefilter`, which does the escaping that a highlighter does not.

---

- Highlight code blocks in articles.
- Add a code block to CKEditor 5.
- Let editors choose a code language.
- Improve a documentation site's code.
- Show a configuration example.
- Highlight shell commands.
- Publish a developer tutorial.
- Add a copy button to code samples.
- Highlight YAML in a guide.
- Show an API request and response.
- Improve technical article presentation.
- Highlight SQL examples.
- Add line numbers to snippets.
- Support a knowledge base's code content.
- Publish a code-heavy changelog.
- Highlight a template example.
- Show a diff in an article.
- Support a training site's materials.
