<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Site Studio Views Element (site_studio_views_element) — agent index

Adds a **Views element** to the Site Studio (Cohesion) builder palette so authors can select and
render a View inside a component. Version **1.0.2**. Core `^8 || ^9 || ^10 || ^11`.
Depends on **`cohesion`** and `views`. No routes, permissions or config of its own.

Requires the Site Studio stack — Acquia's commercial product; `cohesion` is its Drupal side. Only
useful where that is already licensed and installed.

Value: listings stop being a developer task, and the embedded listing keeps Views' filters, sorts,
contextual arguments, pagers, access and caching, because it is still the View doing the work.

The `^8 || ^9 || ^10 || ^11` range is intent, not test evidence — and the element API belongs to
**Site Studio**, which versions independently of Drupal. Verify against the installed Site Studio
version.