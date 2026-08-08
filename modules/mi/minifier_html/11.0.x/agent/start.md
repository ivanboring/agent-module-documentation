<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Minifier HTML (minifier_html) — agent index

Strips whitespace and comments from **every `HtmlResponse`** on `kernel.response`, via regex.
Version **11.0.2**. Core `^10.1 || ^11`. No dependencies, **no routes, permissions or settings**.

Measured saving on a test page: 11,365 → 9,656 bytes (~15%).

**Do not deploy without reading this.** The core is
`preg_replace('/(\s)+/s', '\1', $html)` over the whole document — **no `<pre>`, `<code>`,
`<textarea>` or `<script>` exclusion, and no way to add one.**

Verified by A/B on the same page:

1. **`<pre>` is destroyed.** off → `function f() {\n    if (x) {`; on → `function f() { if (x) {`.
2. **Stored content is corrupted through the edit form.** A textarea's contents are its *value*.
   Body stored as `alpha\n\n\nbeta    gamma`; off → served identically; on → `alpha\nbeta gamma`.
   An editor changing only the **title** and saving destroys the body's paragraph breaks. Silent,
   cumulative, recoverable only from revisions. Applies to **every** textarea site-wide, including
   one-value-per-line settings forms.
3. All HTML comments removed unconditionally; the block-comment regex runs against `<script>`
   contents, so a JS string containing `/*` truncates to the next `*/`.

Cleared: only `HtmlResponse` is touched; the line-comment regex correctly anchors `//` to line
start, so URLs survive.

**Recommend minifying at a CDN or reverse proxy instead** — they exclude `<pre>`/`<textarea>`.