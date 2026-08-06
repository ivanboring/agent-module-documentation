<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Taxonomy Depth Widget restricts which levels of a hierarchical vocabulary a term reference field offers, configured in the form display.

---

Hierarchical vocabularies are usually built so that only the leaves are meant to be chosen. A location tree of country → region → city exists so content is tagged with a city; a product taxonomy of department → category → subcategory exists so a product is a subcategory; a subject classification's top level is a grouping and not an answer. Drupal's widgets offer every term at every level, so editors tag content with "Europe" when they meant "Lyon", and a listing filtered by city misses it — which is discovered when someone notices the counts do not add up. Constraining the offered depth makes the intended level the only one available. Version **2.1.2** on core `^10 || ^11`, depending on core `taxonomy`. Two things worth attaching. **This is a widget setting, so it constrains the form and nothing else** — a migration, a JSON:API write, a second form display or an editor using a different widget can still store a top-level term, so a site that needs the constraint enforced rather than suggested needs a **field constraint**, and the widget is guidance. And **the hierarchy has to be genuinely uniform for a depth rule to be right**: a vocabulary where most branches are three deep and two are two deep will hide the leaves of the shallow branches, so the rule only works where the tree is regular — which is an argument for checking the real vocabulary rather than the intended one, since taxonomies drift.

---

- Offer only leaf terms in a widget.
- Stop editors selecting a top-level term.
- Restrict a location field to cities.
- Offer only subcategories on a product.
- Constrain a subject classification's depth.
- Improve tagging accuracy.
- Hide grouping terms from a select list.
- Fix listings missing mis-tagged content.
- Restrict a vocabulary's selectable levels.
- Offer second-level terms only.
- Reduce editorial tagging mistakes.
- Guide editors to the intended level.
- Constrain a region field to districts.
- Restrict a category widget's options.
- Improve faceted search accuracy.
- Hide intermediate terms from selection.
- Support a deep vocabulary's usability.
- Offer only the leaves of a tree.
