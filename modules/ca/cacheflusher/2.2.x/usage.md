<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CacheFlusher adds a quick cache-flush button to the admin toolbar, letting administrators clear caches without going to the performance page or CLI.

---

CacheFlusher adds a button to the administration toolbar that flushes caches with one click —
saving the trip to the performance settings page or a `drush cr`. It is a small convenience for
developers and site builders who clear caches frequently during development or content work. It is
gated by its own permission so only trusted roles see the button.

Use it to speed up the clear-cache action in day-to-day work. It is an administration/UX tool; the
action it performs (flushing caches) is a standard maintenance operation, and access is controlled by
its permission (grant it only to trusted admins, since frequent full cache clears affect performance
for all users while caches rebuild).

---

- Flush caches from the admin toolbar.
- Clear caches with one click.
- Skip the performance page for cache clears.
- Speed up clear-cache during development.
- Gate the button by permission.
- Grant only to trusted admins.
- Avoid drush cr for quick clears.
- Add a toolbar cache button.
- Perform a standard cache flush.
- Aid developers and site builders.
- Clear caches during content work.
- Control access via permission.
- Understand full clears affect performance.
- Provide an admin convenience.
- Flush all caches quickly.
- Rebuild caches after a clear.
- Place the action on the toolbar.
- Reduce cache-clear friction.
- Use during theme/config work.
- Trigger a cache rebuild.
