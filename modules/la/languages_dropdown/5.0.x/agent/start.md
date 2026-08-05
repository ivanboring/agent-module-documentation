<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Languages Dropdown (languages_dropdown) — agent index

Language switcher rendered as a **dropdown** rather than a list of links. Depends on core
`language`. Core requirement `^10 || ^11`.

Key facts:
- **The problem is scale.** Core's switcher prints every language as a link — fine at two or
  three, unmanageable at fifteen.
- **Three accessibility points that are easy to get wrong with a dropdown, and worth verifying:**
  1. each option needs **`lang`/`hreflang`** so assistive technology announces language names in
     their own language rather than mispronouncing them in the page's;
  2. the control needs an **accessible label** — an unlabelled select of language names is
     ambiguous;
  3. if it **navigates on change** rather than on submit, that is a change-of-context that catches
     keyboard users mid-selection. A submit button avoids it.
- Placed as a block, so visibility and region are ordinary block concerns.
