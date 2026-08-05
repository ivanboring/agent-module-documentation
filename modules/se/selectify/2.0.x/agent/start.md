<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Selectify (selectify) — agent index

Enhanced **select and radio/checkbox components** across **Views, Field UI, Form API and Webform**
(via `selectify_webform`). Depends on core `views` and `field`. Configure at
`/admin/config/…/selectify`. Version **2.0.4**. Core requirement `^10 || ^11`.
Its description claims **WCAG 2.1 AA**, five dropdown widgets, RTL and LTR.

**The breadth is the notable part** — a site that enhances only one of those surfaces ends up with
an inconsistent interface.

**The standing principle: do not replace a native form control unless the replacement is measurably
better.** The native `<select>` is fast, accessible and unusable past ~30 options; the usual
replacements (Select2, Chosen and successors) rebuild it out of `div`s and routinely lose the
keyboard behaviour and screen-reader semantics that came free.

**Verify these two rather than trusting the AA claim — it is a claim about exactly these:**
1. **Keyboard**: type-ahead, arrow keys, Home/End, Escape to close, Enter to select — all behaving
   as on a native select, because that is what people have learned.
2. **Screen reader**: correct role, option **count and position** announced, selection changes
   announced. Test one with a screen reader before believing it.
