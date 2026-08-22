# Content Hub Tree — manual setup guide

**Content Hub Tree** (`content_hub_tree`) presents your content as a hierarchical
tree built from a menu's structure. Instead of a flat content list, editors and
users get a "content hub" where pages are organised in the same parent‑child shape
as the menu that links them — so you can browse and navigate content the way it's
actually structured on the site.

The tree simply reflects an existing menu hierarchy: you point the module at a menu,
and it visualises the content those menu links reference as a tree. It's a
site‑structure and navigation aid, not an access‑control feature — the tree only
ever shows content the current viewer is allowed to see, and it grants no extra
access of its own. It depends on core's **Menu Link Content** module, which is where
the menu links it reads come from.

This is a lightweight module with no dedicated settings form; the one thing you
"configure" is which menu the tree is based on, by building and maintaining that menu
in the usual Drupal menu UI. Note this release is an early beta.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

This module has **no dedicated configuration form**. What shapes the tree is the
menu it's based on, which you manage through Drupal's normal menu tools, as described
in "How to use it" below.

## How to use it

1. Enable the module and its Menu Link Content dependency (see
   [Installation](installation/index.md)).
2. Build or choose the **menu** whose structure should drive the tree, using
   **Structure → Menus** (`/admin/structure/menu`). The parent‑child arrangement of
   its links becomes the shape of the content tree.
3. Browse the resulting content tree as a hierarchical hub. Because the tree honors
   normal access checks, each viewer only sees the content they're permitted to view.
4. To change the hierarchy, adjust the menu — reorder, nest, or add links — and the
   tree reflects those changes.
