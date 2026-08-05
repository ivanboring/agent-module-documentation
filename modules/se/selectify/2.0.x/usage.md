<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Selectify replaces plain select elements and radio/checkbox groups with enhanced components — searchable dropdowns, multi-select, tag-style pickers — across Views, Field UI, Form API and Webform.

---

The native `<select>` is fast, accessible and unusable past about thirty options, which is why every application replaces it eventually. The replacements are usually the problem: Select2, Chosen and the rest are jQuery-era libraries that rebuild the control out of `div`s and frequently lose the keyboard behaviour and screen-reader semantics the native element had for free. Selectify's pitch is that it does not — the description claims **WCAG 2.1 AA**, five dropdown widgets, and RTL as well as LTR support — and its reach is the notable part: Views exposed filters, Field UI widgets, arbitrary Form API elements and, through `selectify_webform`, Webform. That breadth matters because a site that enhances only one of those has an inconsistent interface. Version **2.0.4** on core `^10 || ^11`, depending on core `views` and `field`. Two things to verify rather than take on trust, because they are what every such component gets wrong. **Keyboard operation**: type-ahead, arrow keys, Home and End, Escape to close, and Enter to select must all behave as they do on a native select, since that is what people have learned. And **screen-reader announcement**: the control needs the right role, the option count and position announced, and selection changes announced — a claim of AA conformance is a claim about these specifics, so test one with a screen reader before believing it. The general principle stands regardless: **do not replace a native form control unless the replacement is measurably better**, because the native one is the accessible baseline everything else is measured against.

---

- Make a long select list searchable.
- Add a tag-style multi-select.
- Improve a Views exposed filter.
- Enhance a taxonomy reference widget.
- Improve a Webform select element.
- Add a searchable country picker.
- Improve a large category selector.
- Make radio groups more usable.
- Support right-to-left interfaces.
- Improve form usability on mobile.
- Replace an inaccessible select library.
- Add a multi-select with chips.
- Improve an admin filter's usability.
- Enhance a field widget consistently.
- Support a WCAG conformance goal.
- Improve a long dropdown in a form.
- Add type-ahead to a select.
- Standardise select components site-wide.
