<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Token Defaults (token_default) — agent index

Supplies a **fallback value for tokens that resolve to nothing**. Defaults are **configuration
entities** at `/admin/config/search/token_default`; settings behind `administer token defaults`.
Depends on `token`. Version **2.0.0-rc2** — a release candidate.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The problem is silence.** Tokens fill meta descriptions, path patterns, email bodies and
scheduled messages, and when they resolve to nothing they produce an empty string with no warning.
A meta description built from a summary field is missing on every node where that field is blank —
discovered months later in an SEO audit, if at all.

**Two things to think through:**
1. **A fallback hides the gap rather than fixing it.** If the real problem is editors not filling
   a field, a default makes the symptom invisible while the content stays thin. Decide which you
   want.
2. **Defaults chain.** A fallback that is itself a token can also resolve to nothing — keep the
   last link a **literal string**, and test with genuinely empty content, not a well-populated
   example node.
