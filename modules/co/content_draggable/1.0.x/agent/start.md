<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Draggable (content_draggable) — agent index

**Ships a DraggableViews-based admin content view plus a menu link for manual click-and-drag content ordering.**

- **Version:** 1.0.x (1.0.2)
- **Core:** ^9 || ^10 || ^11
- **Depends:** draggableviews
- **Provides:** menu link `content_drabbable.admin_content_draggable` → `view.content_draggable.page_1`; bundled view `config/optional/views.view.content_draggable.yml`.
- **No PHP classes, no routes, no services, no permissions file.**

**Security:** No custom code or endpoints. Access is entirely determined by the bundled view's access settings and DraggableViews/content permissions; nothing anonymous or mutating is introduced by this module. No TLS/credential handling.