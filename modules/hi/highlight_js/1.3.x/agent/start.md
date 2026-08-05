<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Highlight Js syntax highlighter (highlight_js) — agent index

Code-block plugin for **CKEditor 5** with **Highlight.js** rendering. Depends on core `ckeditor5`.
Settings behind `administer highlight_js configuration` (`restrict access: TRUE`).
Version **1.3.0**. Core requirement `^9 || ^10 || ^11`.

**Three practical points:**
1. **Load only the languages the site uses.** The full Highlight.js build covers ~200 languages and
   is large; a build with the five a site actually publishes is a fraction of the size. This is one
   of the most common unnecessary payloads on documentation sites.
2. **Highlighting must not change the code.** A reader's copy-paste has to yield exactly what the
   author wrote — the markup should wrap tokens, never alter whitespace or insert characters.
3. **Where the library comes from.** CDN = a third-party request per page plus a CSP allowance;
   local = the site owns updates. `libraries_provider` (wave 74) exists precisely to make that a
   site decision rather than the module's.
