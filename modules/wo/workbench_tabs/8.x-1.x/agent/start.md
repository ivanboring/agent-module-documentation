<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workbench Tabs (workbench_tabs) — agent index

Places **local task tabs and status messages** in a consistent location on every page, regardless of
theme. Part of the **Workbench** family. Settings at `/admin/config/…/workbench_tabs`; the
`use workbench_tabs` permission scopes the treatment to editors rather than everyone.
Version **8.x-1.8**. Core requirement `^9 || ^10 || ^11`.

**The problem is theme switching.** An editor moves between front-end and admin themes constantly —
view, edit, view — and the two render the tab row and message region in different places, widths and
styles. On a front-end theme that never anticipated administrative use, the tab row may be squeezed
into a content column or, if the region was forgotten, **absent entirely**.

**Two things to verify — the same two for any relocation of these elements:**
1. **Status messages carry `aria-live`**, so a new message is announced without moving focus.
   Relocating must preserve that, or feedback becomes **visual-only**.
2. **Local tasks are navigation** — keyboard reachable, visible focus indicator, active tab
   distinguishable by **more than colour**. That is where cosmetic changes to this row usually go
   wrong.

Compare `admin_toolbar_messages` (wave 75), which moves messages into the toolbar instead.
