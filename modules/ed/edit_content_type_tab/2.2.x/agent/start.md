<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit Content Type Tab — agent index

Adds a local task **tab on node pages** that links to that node's **content type edit form**
(`/admin/structure/types/manage/{type}`). Version **2.2.x** (8.x-2.2). Core `^9 || ^10 || ^11`. Development package.

**What it actually does (verified in source):** the tab route `/node/{node}/edit_content_type_tab`
(controller `EditController::editLink`) loads the node, reads its bundle, and **redirects** to the content type
management form with `?destination=node/{nid}`. The tab title is dynamic (`EditTab` plugin): `Edit '<Type Name>' type`.
It is a **navigation shortcut only** — it does NOT convert/re-bundle a node and causes **no data loss**.

- **Access:** route requires the core **`administer content types`** permission — only site builders/admins get the tab. The module defines no permissions of its own.
- **Config:** none. No settings form, no config schema, no dependencies beyond core.
- **Install/enable:** `composer require drupal/edit_content_type_tab`, then enable `edit_content_type_tab`. The tab appears automatically on node canonical pages (weight 15).
