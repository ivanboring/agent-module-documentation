<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Back-2-Top (back_2_top) — agent index

**A configurable vanilla-JavaScript back-to-top button attached site-wide via page attachments.**

- **Version:** 4.0.x · **Core:** ^10 || ^11
- **Route:** `back_2_top.settings` → `/admin/config/user-interface/back-2-top` (perm: *administer site configuration*).
- **Config:** `back_2_top.settings` (enabled, position, color, opacity, size, image_type, custom_image, show_on_admin).
- **Code:** `back_2_top_page_attachments()` attaches library `back_2_top/back_to_top` with settings when `enabled`; skips admin routes unless `show_on_admin`. Custom image stored as a managed file.
- **Security:** single admin settings route, permission-gated; no anonymous or mutating endpoints; no external requests. Nothing to note.
