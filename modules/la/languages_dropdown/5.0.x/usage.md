<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Languages Dropdown renders the language switcher as a dropdown instead of a list of links, which is what a site with more than three languages needs.

---

Core's language switcher block prints every language as a link, and that is the right presentation for two or three and unmanageable at fifteen — a European institution's site, a global product site, anything with regional variants. A dropdown collapses the list to one control, which fits in a header and does not push the navigation onto a second row. This module supplies that, depending on core `language` and targeting `^10 || ^11`. The accessibility points are the ones that separate a usable language switcher from a frustrating one, and they are easy to get wrong with a dropdown: each option needs its **`lang` and `hreflang`** attributes so assistive technology announces language names in their own language rather than mispronouncing them in the page's; the control needs a label, since an unlabelled select of language names is ambiguous; and if the dropdown navigates on change rather than on submit, that is a change-of-context that catches keyboard users mid-selection — a submit button or an explicit confirmation avoids it. Worth checking these rather than assuming, because they are the difference between the switcher working for the audience it exists for.

---

- Show many languages in one control.
- Fit a language switcher into a header.
- Replace a long list of language links.
- Support a site with fifteen languages.
- Reduce header clutter.
- Improve mobile language switching.
- Show regional variants compactly.
- Support an institutional multilingual site.
- Keep navigation on one row.
- Show the current language clearly.
- Improve a global site's switcher.
- Place the dropdown as a block.
- Style the switcher to match a theme.
- Support a translation-heavy site.
- Reduce visual weight of the switcher.
- Show language names natively.
- Improve switcher usability.
- Support a multi-market site.
