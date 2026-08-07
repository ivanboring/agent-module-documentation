<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Toolbar Tasks (admin_toolbar_tasks) — agent index

Renders administrative **local tasks** (view / edit / revisions / translate) in the **toolbar**
rather than as tabs in the content area. Version **1.0.3**. Core `^10 || ^11`. Depends on `toolbar`.

Biggest gain on sites where editors work in the **front-end theme**, where tabs either collide with
the design or get suppressed and become unreachable.

**Two checks on a real site:** the toolbar is not infinitely wide — a content type with translation,
moderation, revisions, devel and contrib tabs produces more tasks than fit, so check that case not a
stock install; and local tasks are **access-filtered per route**, so **test as an editor, not as
user 1**, which sees everything and therefore tests nothing.