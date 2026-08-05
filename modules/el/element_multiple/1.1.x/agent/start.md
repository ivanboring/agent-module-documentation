<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Element Multiple (element_multiple) — agent index

Reusable Form API **`#type`** for collecting several values of the same kind, with add-more
behaviour. No dependencies, no configuration — infrastructure. Version **1.1.0**.
Core requirement `^10 || ^11`.

**The gap:** Drupal's multi-value pattern (rows, "Add another", remove, drag) is tied to the
**field** system. A settings form, a config entity form or a custom form needing a list of email
addresses, API endpoints or key-value pairs must build it by hand — and doing that correctly is
more work than it looks: the count lives in **form state**, the **AJAX rebuild** must preserve
entered values, the wrapper needs a **stable id**, and the whole thing must survive **validation
errors** without losing input. Most projects write it once and slightly wrong; the usual symptom is
an "Add another" that clears the rows above it.

**Two things to check:**
1. **AJAX behaviour under validation errors** — the part implementations get wrong. Test adding a
   row **after a failed submit** and confirm nothing is lost.
2. **The element returns an array the consumer owns.** Whether empty rows are filtered, whether
   order is meaningful, and whether values are deduplicated belongs to the **submit handler** —
   assume none of it from the element's defaults.
