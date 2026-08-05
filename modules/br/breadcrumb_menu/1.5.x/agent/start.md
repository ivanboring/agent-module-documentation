<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Breadcrumb Menu (breadcrumb_menu) — agent index

Builds breadcrumbs from **menu link titles** instead of page titles. No dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/system/breadcrumb-menu`, permission `administer breadcrumb_menu`.

Key facts:
- Implemented as a **breadcrumb builder** (`src/BreadcrumbBuilder.php`), which means it competes
  with other breadcrumb providers **by priority**. Running two breadcrumb modules is the usual
  cause of "my settings have no effect" — check what else is registered before debugging this one.
- Falls back to the page title where the current page has no menu link, so pages outside the menu
  still get a trail.
- The problem it solves is real and specific: a page titled *"Applying for a residents' parking
  permit in the borough"* appears in the menu as *"Parking permits"*, and the breadcrumb should
  use the latter — the short label chosen for navigation.
- Own permission rather than `administer site configuration`, so breadcrumb behaviour can be
  delegated.
- `.info.yml` reports the legacy `version: '8.x-1.5'`.
