<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Minifier HTML strips whitespace and comments from every HTML response, and from inline CSS and JavaScript within it, using regular expressions applied on `kernel.response`.

---

It does reduce page size — measured here, 11,365 bytes down to 9,656, about 15% — and it needs no configuration. The README's guidance is "Just install the module no settings are required to compress the HTML."

**That is also the problem: there is no configuration, and therefore no exclusions.** The core of the module is `preg_replace('/(\s)+/s', '\1', $html)` over the entire document, with no special case for `<pre>`, `<code>`, `<textarea>` or `<script>`, and no way to add one.

Two consequences, both verified by fetching the same page with the module enabled and disabled.

In rendered output, `<pre>` formatting is destroyed — a code sample stored as `function f() {\n    if (x) {` is served as `function f() { if (x) {`. Any site publishing code, configuration snippets, poetry or ASCII diagrams loses that formatting everywhere.

The serious one is `<textarea>`. A textarea's contents are its **value**, not its presentation. A node body stored as `alpha\n\n\nbeta    gamma` is served into the edit form as `alpha\nbeta gamma`. So an editor who opens that node, changes the title, and saves has silently destroyed the body's paragraph breaks — without touching the field, without a warning, and with the original recoverable only from a previous revision nobody has a reason to check. It applies to every textarea on the site, including the one-value-per-line settings forms that are a common Drupal pattern.

Comment stripping is likewise unconditional: all HTML comments go, and the block-comment regex is applied to script contents, so a JavaScript string containing `/*` truncates to the next `*/`.

If page size is the goal, minify at a reverse proxy or CDN — they exclude `<pre>` and `<textarea>` because this problem is well known.

---

- Reduce rendered page size by roughly 15%.
- Strip whitespace from HTML output.
- Strip HTML comments from output.
- Compress inline CSS.
- Compress inline JavaScript.
- Understand there are no settings or exclusions.
- Expect <pre> formatting to be destroyed.
- Expect <textarea> values to be altered.
- Expect stored content to be corrupted on re-save.
- Avoid on any site publishing code samples.
- Avoid on any site with admin textareas in use.
- Prefer minification at a CDN or reverse proxy.
- Prefer a DOM-aware minifier over regexes.
- Check node revisions if content has been flattened.
- Uninstall rather than configure — there is nothing to configure.
- Weigh 15% page size against silent content loss.