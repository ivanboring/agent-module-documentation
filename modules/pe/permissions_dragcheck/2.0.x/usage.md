<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Permissions DragCheck lets an administrator tick a run of permission checkboxes by clicking and dragging across them.

---

Drupal's permissions page on a site with a hundred modules is a grid of several thousand checkboxes, and configuring a role means clicking a great many of them individually. Drag-to-check is the kind of small interaction improvement that saves a genuinely irritating amount of time on a task administrators do at every project's start.

It is JavaScript only — no permissions, no routes, no configuration — and it changes nothing about what the permissions page does, only how quickly boxes can be ticked.

**That speed is worth a moment's thought, because the permissions page is the one screen where clicking quickly is most costly.** Granting a permission by accident is not visible afterwards — the checkbox looks the same as one ticked deliberately — and permissions are the site's access control. The mitigation is not to avoid the module but to review the resulting role rather than the gesture: after a bulk change, read back what the role now holds, and pay attention to anything marked `restrict access`.

Worth pairing with the habit of exporting configuration, so a permissions change appears in a diff where it can be reviewed like any other change.

---

- Tick a run of permission checkboxes quickly.
- Configure a new role faster.
- Reduce clicking on a large permissions grid.
- Set up permissions at project start.
- Grant a module's permissions to a role in one gesture.
- Review a role after a bulk change.
- Watch for restrict-access permissions granted by accident.
- Export configuration to diff a permissions change.
- Speed up repetitive admin work.
- Avoid mis-clicks on a dense grid.
- Compare roles after editing.
- Audit permissions granted in bulk.
- Train administrators on reviewing after dragging.
- Keep permission changes reviewable.
- Document the review step for administrators.
- Compare a role before and after editing.
