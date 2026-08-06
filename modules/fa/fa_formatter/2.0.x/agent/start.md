<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Font Awesome Formatter for Int List (fa_formatter) — agent index

One field formatter: renders an integer field as that many Font Awesome icons (star ratings and
similar). Version **2.0.3**. Core `^8 || ^9 || ^10 || ^11`.
No dependencies, routes, permissions, or config.

Plugin: `Plugin/Field/FieldFormatter/FAFormatterInt`.

**Two things to check before recommending it.**

1. **It does not ship Font Awesome.** The theme or a Font Awesome module must load the library.
   The failure mode is blank space where the rating should be.
2. **Accessibility.** The icons are a decorative repetition of a number. Make sure the value
   itself reaches assistive technology — otherwise a screen reader meets four unlabelled glyphs.

Note `package: Custom` in the info file — a packaging slip, not a signal about the module.