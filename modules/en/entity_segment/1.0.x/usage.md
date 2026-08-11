<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Segment lets you define named, reusable segments (subsets) of content entities.

---

Entity Segment lets site builders define named, reusable segments of any content entity type — reusable definitions of a subset of entities (by criteria/traversal) that other features can reference, e.g. for targeting, listing, or personalization. It uses a property-traversal submodule to resolve segment membership.

Permissions cover segment-type administration (`administer segment types`) and segments (`administer segments`). Depends on core `options`, `user`, `views`, the `entity` module, and its own property_traversal submodule; requires Drupal 11.1+.

---

- Define named entity segments.
- Make segments reusable.
- Segment any content entity type.
- Resolve membership by traversal.
- Support targeting/personalization.
- Reference segments in features.
- Gate types with `administer segment types`.
- Gate segments with `administer segments`.
- Depend on core `options`, `user`, `views`.
- Depend on `entity` + property_traversal.
- Require Drupal 11.1+.
- Define subsets of content.
- Reuse segment definitions.
- Support listing/targeting.
- Configure segment criteria.
- Manage segments centrally.
- Build reusable audiences.
- Resolve segment membership.
