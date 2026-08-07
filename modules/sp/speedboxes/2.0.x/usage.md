<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Speedboxes lets an administrator tick or untick a run of checkboxes by dragging across them.

---

Drupal's dense checkbox grids — the permissions page above all, but also bulk operations, field settings and taxonomy forms — are configured one click at a time. On a site with a hundred modules the permissions grid has several thousand checkboxes, and setting up a role means clicking a lot of them.

Drag-to-toggle is the kind of small interaction improvement that saves a real and irritating amount of time on work every project does at the start.

**One caution, and it is the same one that applies to `permissions_dragcheck` in wave 86:** the permissions page is the screen where clicking quickly is most expensive. A permission granted by accident looks identical afterwards to one granted deliberately, and permissions are the site's access control.

The mitigation is not to avoid the module but to change what gets reviewed: after a bulk change, read back what the role now holds rather than trusting the gesture, and pay particular attention to anything marked `restrict access`. Exporting configuration helps here too, since a permissions change then appears in a diff where it can be reviewed like any other change.

---

- Tick a run of checkboxes quickly.
- Configure a role faster.
- Reduce clicking on a permissions grid.
- Speed up bulk operation selection.
- Set field settings in bulk.
- Review a role after a bulk change.
- Watch for restrict-access permissions.
- Export configuration to diff the change.
- Avoid mis-clicks on a dense grid.
- Compare a role before and after.
- Speed up taxonomy form entry.
- Train administrators to review after dragging.
- Audit permissions granted in bulk.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
