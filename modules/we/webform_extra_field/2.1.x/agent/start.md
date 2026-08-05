<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Extra Field (webform_extra_field) — agent index

Places a **webform as an extra field** in an entity display — so it appears in **Manage Display**
among real fields, is reorderable, and can be switched per **view mode**. Version **2.1.0**.
Core requirement `^10 || ^11`.

**Four ways to get a webform onto a node, differing in who controls placement:**
- **webform reference field** — which form is stored **per node**. Right when the choice is
  editorial.
- **block with a URL condition** — right when the form belongs to a **section**.
- **token in the body** — works, and puts markup in content.
- **extra field (this)** — attached by **display configuration**, so every node of that type shows
  it, positioned and reorderable, present on full view and absent from the teaser with no
  conditional logic. Right when the form is part of **what the content type is**.

**Two things to plan:**
1. **The submission's context is what makes it useful.** A feedback form on every article is only
   worth having if the submission records **which article** — check the node is passed as a token
   or hidden value, or every submission arrives identical and unattributable.
2. **It renders on every page of that type, which changes the caching profile.** A form carries a
   build id and a token, so the page cannot be served from the anonymous page cache the same way.
   On a high-traffic content type that is a real change, not a detail.
