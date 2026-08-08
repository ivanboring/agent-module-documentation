<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Bootstrap Button adds one paragraph type — a Bootstrap-styled button — to the Extra Paragraph Types family.

---

The Extra Paragraph Types project is a set of small modules that each contribute one ready-made paragraph type, sharing configuration and styling through `ept_core`. This is the button. An editor building a landing page from paragraphs gets a call-to-action they can configure — text, link, Bootstrap variant, size, alignment — without a developer creating a paragraph type and a template for it.

The value is in not doing the work, so the calculation is straightforward: a bespoke button paragraph is perhaps an hour of field configuration plus a template, and it is then yours to maintain. This is an enable, and it is then subject to somebody else's release schedule and styling decisions.

It assumes Bootstrap. The classes it emits are Bootstrap's, so on a theme that is not Bootstrap-based the button will render unstyled until the classes are given meaning. That is not a defect — the module says Bootstrap in its name — but it is the thing to check before adding it.

Being part of a family matters for planning too: the EPT modules share `ept_core`, so adopting one makes adopting the others cheap, and sites tend to end up with several.

---

- Add a call-to-action button to a paragraph stack.
- Let editors place a styled button without a developer.
- Build a landing page from paragraphs.
- Choose a Bootstrap button variant.
- Choose a button size.
- Align a button within its section.
- Link a button to an internal page.
- Link a button to an external URL.
- Standardise button markup across a site.
- Avoid building a bespoke button paragraph type.
- Pair with other EPT paragraph types.
- Share configuration through ept_core.
- Confirm the theme is Bootstrap-based first.
- Restyle the emitted Bootstrap classes if it is not.
- Keep button styling out of individual templates.
- Reuse one button type across content types.