<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Content Lock (localgov_content_lock) — agent index

**Content Lock** configured for LocalGov Drupal. Version **1.2.0**. Core `^10.2 || ^11`.
Depends on `content_lock`.

Pessimistic locking — whoever opens the edit form holds it. **Configuring it well is the whole job**,
which is why a distribution-specific module exists: which types lock, per-translation behaviour,
timeout for abandoned sessions, and who may break a lock.

**Check lock breaking first.** Someone must be able to release a stale lock; if that is
administrator-only on a team of forty editors, people wait or edit around it. Whoever can be reached
quickly should be able to break one, and the module should record who did.