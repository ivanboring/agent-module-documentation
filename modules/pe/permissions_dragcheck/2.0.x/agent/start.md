<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Permissions DragCheck (permissions_dragcheck) — agent index

Click-and-drag to tick runs of checkboxes on the permissions page.
Version **2.0.2**. Core `^8.9 || ^9 || ^10 || ^11`.
**JavaScript only** — no permissions, routes or config. Changes nothing about what the page does.

**Worth one caution:** the permissions page is the screen where clicking quickly is most costly. An
accidentally granted permission looks identical to a deliberate one afterwards, and permissions are
the site's access control.

Mitigation is not avoidance but **review the resulting role**, paying attention to anything marked
`restrict access` — and export configuration so the change lands in a diff.