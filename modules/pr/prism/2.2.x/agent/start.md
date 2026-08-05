<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prism (prism) — agent index

Syntax highlighting via **Prism.js**. Version **2.2.3**. Core requirement `^10 || ^11`.

**Prism vs Highlight.js — the difference that decides the choice:**
- **Prism** — built around **explicit language declaration** (`class="language-php"`) and around
  **plugins**: line numbers, line highlighting, **copy-to-clipboard**, diff rendering. Suits a site
  whose editor can record the language.
- **Highlight.js** (`highlight_js`, wave 75) — leans on **automatic detection**, ships a very large
  default build.

Prism's plugin set covers what documentation actually needs — line numbers to reference in prose, a
highlighted line to draw attention, and a **copy button**, the single most appreciated feature on
any page containing a command.

**Three points, the same for any highlighter:**
1. **Build only the languages the site uses.** Prism's builder exists for this — two hundred
   grammars for five is a classic unnecessary payload.
2. **Highlighting must not alter the code.** A reader's copy-paste must produce exactly what the
   author wrote — which is why the copy plugin is worth enabling rather than trusting selection.
3. **Where the library comes from** — CDN (third-party request + CSP allowance) vs local (site owns
   updates). `libraries_provider` (wave 74) exists to make that a site decision.

Pairs with `codefilter` (same wave), which does the **escaping** this does not.
