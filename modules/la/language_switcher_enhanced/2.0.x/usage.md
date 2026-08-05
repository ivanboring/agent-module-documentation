<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Language Switcher Enhanced changes how the language switcher behaves for content that is not translated into every language.

---

Core's switcher lists every enabled language and links each one to the equivalent path, whether or not a translation exists there. On a site where every page is translated that is correct and unremarkable. On a real multilingual site — where the news archive is translated, the policy pages are, and the eight hundred older articles are not — it produces links that lead to the untranslated original, or to a 404, or to a page in a language the visitor did not ask for. Each of those is a poor experience, and the last is an SEO problem too, since search engines follow the switcher and index the results. This module supplies the alternative behaviours: hide languages with no translation, mark them as unavailable, or redirect somewhere sensible. Version **2.0.4** on core `^10 || ^11`, no dependencies. Which behaviour to choose is a genuine decision rather than a default to accept. **Hiding** produces a clean switcher and a shifting one — the set of languages changes from page to page, which is disorienting where a visitor has learned the control's position. **Disabling** keeps the switcher stable and tells the truth about what exists, which is usually the better answer for a public site. **Redirecting** is the one to be careful with: sending a visitor to a language homepage because their language has no version of this page loses their place, and doing it as an actual redirect rather than as a link confuses search engines about which URL is canonical.

---

- Hide languages without a translation.
- Stop links to missing translations.
- Mark unavailable languages in the switcher.
- Improve multilingual SEO.
- Avoid 404s from the language switcher.
- Show only translated languages.
- Improve a partially translated site.
- Stop serving the wrong language.
- Handle an untranslated archive.
- Keep the switcher honest.
- Redirect when no translation exists.
- Improve a visitor's language experience.
- Prevent duplicate content indexing.
- Support a phased translation programme.
- Disable rather than hide missing languages.
- Handle a mixed-translation site.
- Improve switcher accuracy.
- Support a large multilingual archive.
