<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Code Filter (codefilter) — agent index

Text-format filter providing `<code>` and `<?php … ?>` style tags that **escape** their contents and
render them as `<pre><code>` blocks. No dependencies. Version **2.0.1**.
Core requirement `^8 || ^9 || ^10 || ^11` — one of the oldest modules in the ecosystem, from when
drupal.org itself needed it, doing a job that has not changed.

**The security point, which is the opposite of what "filter" sometimes implies: this filter's job is
escaping, and the escaping is what makes it safe.** Content between the tags becomes **text**, so a
`<script>` in a code sample is **displayed rather than executed**. That depends on **filter order**
relative to any HTML-permitting filter in the same format — check it.

**What it does not do: highlighting.** Syntax colouring is a separate concern —
`highlight_js` (wave 75) or `prism` (wave 77). Combining them means confirming the highlighter
operates on the **escaped output** rather than fighting it.

Why it matters beyond aesthetics: on a documentation site a reader **copies what they see**, so a
snippet mangled by the filter chain is a broken instruction, not a cosmetic flaw.
