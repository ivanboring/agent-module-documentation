<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prism Js syntax highlighter (prismjs) — agent index

**CKEditor 5 code block plugin + PrismJS renderer** — the editor side and the display side from one
module. Depends on core `ckeditor5`. Settings at `/admin/config/…/prismjs`. Version **1.1.4**.
Core requirement `^9 || ^10 || ^11`.

**Distinguish it from `prism` (wave 77)**, which integrates the library for **rendering only**.
Having both halves here matters on a documentation site, because they must **agree about the
language**: an editor choosing "PHP" in a dropdown and a renderer **detecting** the language from
content are different mechanisms, and only the first is reliable.

**Three practical points — the same for any highlighter:**
1. **Build only the languages the site uses.** PrismJS's builder exists for this; two hundred
   grammars for five is a classic unnecessary payload.
2. **Highlighting must not alter the code.** A reader **copies what they see** — wrap tokens, never
   change whitespace or insert characters. Enable the **copy-to-clipboard** plugin rather than
   trusting selection.
3. **Where the library comes from is a site decision** — CDN (third-party request + CSP allowance)
   vs local (site owns updates). `libraries_provider` (wave 74) makes that configurable.

**Pairs with `codefilter`** (wave 77), which does the **escaping** a highlighter does not.
