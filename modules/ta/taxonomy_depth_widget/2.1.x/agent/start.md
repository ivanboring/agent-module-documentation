<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Depth Widget (taxonomy_depth_widget) — agent index

Restricts which **levels of a hierarchical vocabulary** a term reference field offers, configured in
the **form display**. Depends on core `taxonomy`. Version **2.1.2**.
Core requirement `^10 || ^11`.

**The problem:** hierarchical vocabularies are usually built so only the **leaves** are meant to be
chosen — country → region → **city**; department → category → **subcategory**. Drupal's widgets
offer **every** term at every level, so editors tag with "Europe" when they meant "Lyon", and a
listing filtered by city misses it — discovered when the counts do not add up.

**Two things worth attaching:**
1. **It is a widget setting, so it constrains the form and nothing else.** A **migration**, a
   **JSON:API write**, a **second form display** or a different widget can still store a top-level
   term. A site needing the constraint **enforced** rather than suggested needs a **field
   constraint**; this is guidance.
2. **A depth rule needs a genuinely uniform hierarchy.** Where most branches are three deep and two
   are two deep, the rule **hides the leaves of the shallow branches**. Check the **real**
   vocabulary rather than the intended one — taxonomies drift.
