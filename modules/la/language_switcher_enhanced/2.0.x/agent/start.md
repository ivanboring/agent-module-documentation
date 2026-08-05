<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Language Switcher Enhanced (language_switcher_enhanced) — agent index

Changes language-switcher behaviour for content **not translated into every language**.
No dependencies. Version **2.0.4**. Core requirement `^10 || ^11`.

**What core does:** lists every enabled language and links each to the equivalent path — whether or
not a translation exists. On a real multilingual site (news translated, policies translated, eight
hundred older articles not) that yields links to the untranslated original, to a 404, or to a page
in a language the visitor did not ask for. The last is an **SEO** problem too: search engines
follow the switcher and index what they find.

**Choosing the behaviour is a real decision, not a default to accept:**
- **Hide** — clean switcher, but the set of languages **shifts page to page**, disorienting once a
  visitor has learned the control's position.
- **Disable / mark unavailable** — stable switcher that tells the truth about what exists. Usually
  the better answer for a public site.
- **Redirect** — be careful. Sending a visitor to a language homepage **loses their place**, and
  doing it as an actual redirect rather than a link confuses search engines about which URL is
  canonical.

Related: `languages_dropdown` (wave 70) solves the *presentation* problem (many languages in one
control); this solves the *correctness* one.
