<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Paragraphs Selection (paragraphs_selection) — agent index

Inverts the allowed-types model: **each paragraph bundle declares where it may be used**, instead
of each field naming the bundles it accepts. Requires `paragraphs`. Submodule
`paragraphs_selection_paragraphs_sets_support`. Version **2.0.6**.
Core requirement `^9 || ^10 || ^11`.

**Why the inversion matters at scale.** Thirty paragraph types × fifteen referencing fields: adding
a type means editing **every field that should accept it** — easy to forget, so the new type is
available in four places and missing from the fifth for a month. The information is the same either
way but maintained in the wrong place: whether a "Full-width hero" belongs in a page body is a
property **of the hero**, not of every field that might hold one.

**Two things to expect:**
1. **The two models must agree.** The field's own allowed-bundles setting still exists — establish
   whether this **replaces**, **intersects with** or is **applied on top of** it. A type permitted
   on one side and not the other is exactly the confusion the module set out to remove.
2. **It is content modelling, not access control.** It shapes what the widget offers; it does not
   stop a **migration**, a **JSON:API write**, or **existing content** from placing that paragraph
   where the rule now forbids.
