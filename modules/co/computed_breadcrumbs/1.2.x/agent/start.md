<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Computed Breadcrumbs (computed_breadcrumbs) — agent index

Exposes a node's breadcrumb trail as a **computed field**.
Version **1.2.0**. Core `^10 || ^11`. No dependencies.

**The argument, and it is strongest for decoupled sites:** Drupal builds breadcrumbs during
*rendering*, so a front end fetching a node over JSON:API gets fields and no breadcrumb. Rebuilding
the logic in the front end means the site's hierarchy rules live in two places and drift.

**Two things to know:** computed fields compute **per request** — fifty nodes in a listing is fifty
trails, so check the cost on a high-volume API response; and breadcrumbs are **context-dependent** —
the same node reached two ways can legitimately have two trails, and a computed field picks one.
Know which before relying on it for navigation rather than SEO markup.