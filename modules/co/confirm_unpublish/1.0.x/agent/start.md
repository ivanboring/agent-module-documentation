<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Confirm Unpublish (confirm_unpublish) — agent index

Confirmation dialog when a node is **unpublished**. Depends on core `node` only.
Core requirement `^10.2 || ^11`. Version **1.0.6**.

Key facts:
- **The problem is that unpublishing looks trivial and isn't.** It is a checkbox beside Save, the
  same visual weight as editing a title, but the page then vanishes from the site, menus and
  search, and existing URLs return access-denied. Nobody notices until a dead link is reported.
- **Ask whether content moderation is the better answer.** A workflow with an explicit *Archived*
  state makes unpublishing a **transition** with its own permission and log entry — stronger than
  a dialog. The dialog fits teams for whom full moderation is more process than they want.
- Node-only. Other entity types are not covered.
