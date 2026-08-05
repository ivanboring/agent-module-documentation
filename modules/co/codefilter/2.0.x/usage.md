<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Code Filter provides `<code>` and `<?php ... ?>` style tags that escape their contents and render them as formatted code blocks.

---

Publishing code in a CMS is a fight between the code and the filter chain. Angle brackets are stripped or interpreted, ampersands are double-escaped, the editor's autocorrect turns quotes into curly quotes, and a snippet that is correct in the field is wrong on the page — which for a documentation site is not cosmetic, since a reader copies what they see. Code Filter takes the direct approach: content between its tags is escaped once, wrapped in a `<pre><code>` block, and left alone by everything downstream. This is one of the oldest modules in the ecosystem, from the era when drupal.org itself needed it, and its core requirement of `^8` through `^11` reflects a job that has not changed. Version **2.0.1**, no dependencies. The security point is worth stating clearly, because it is the opposite of what "filter" sometimes implies: **this filter's job is escaping, and escaping is what makes it safe**. Content between the tags becomes text, so a `<script>` in a code sample is displayed rather than executed — which is exactly right, and which depends on the filter running in the correct order relative to any HTML-permitting filter in the same format. The complementary point: it escapes, it does not highlight. Syntax colouring is a separate concern handled by `highlight_js` or `prism`, both documented in this campaign, and combining them means checking that the highlighter operates on the escaped output rather than fighting it.

---

- Publish a code sample safely.
- Escape angle brackets in documentation.
- Show a PHP snippet in an article.
- Prevent code being interpreted as markup.
- Keep a copied snippet correct.
- Publish a configuration example.
- Show a shell command.
- Document an API call.
- Escape a template example.
- Publish a tutorial's code.
- Show XML or HTML as text.
- Prevent autocorrect breaking code.
- Publish a changelog with snippets.
- Show a regular expression.
- Document a code fix in an issue.
- Escape user-submitted code samples.
- Publish a knowledge base article.
- Show a SQL query.
