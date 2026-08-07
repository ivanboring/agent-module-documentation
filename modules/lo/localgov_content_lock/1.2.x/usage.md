<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Content Lock ships Content Lock configured for LocalGov Drupal's content types and editorial workflow.

---

Two people editing the same page and one silently overwriting the other is the oldest collaborative-editing failure there is, and Content Lock's answer is pessimistic locking: whoever opens the edit form holds it until they save or release it.

Configuring that well is the whole job, and it is why a distribution-specific module exists. Which content types lock, whether locks apply per translation, how long a lock survives an abandoned session, and who may break one are all decisions, and getting them wrong produces the two opposite failures — pages locked by someone who went to lunch three hours ago, or locks so short they never prevent anything.

For LocalGov Drupal the context is specific and makes locking more valuable than usual: councils have large editorial teams, a lot of content that several people have a legitimate reason to touch, and service pages where a silent overwrite has real consequences for someone trying to find out when their bins are collected.

**The setting to check first is lock breaking.** Someone must be able to release a stale lock, and if that is an administrator-only permission on a team of forty editors, the practical effect is that people wait for an administrator or edit around the lock. Whoever can be reached quickly should be able to break one, and the module should say who did.

---

- Prevent two editors overwriting each other.
- Lock a page while it is being edited.
- Configure locking per content type.
- Decide whether locks apply per translation.
- Set a lock timeout for abandoned sessions.
- Decide who may break a lock.
- Avoid locks nobody can release.
- Avoid locks too short to prevent anything.
- Support a large council editorial team.
- Protect service pages from silent overwrites.
- Record who broke a lock.
- Adopt LocalGov's editorial defaults.
- Audit stale locks on a site.
- Train editors on lock behaviour.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
