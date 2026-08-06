<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom cache provides a cache backend that imposes a maximum lifetime on items Drupal marks as permanent.

---

Drupal's `CACHE_PERMANENT` means "keep until invalidated", and it is correct when invalidation is correct. The failure mode is a cache tag that never fires — a hook that was supposed to invalidate and does not, a third-party integration whose data changed without Drupal knowing, a bug — and the result is a permanent item that is permanently wrong. Nothing expires it, so the only fix is a manual cache clear, and the symptom is stale content nobody can explain.

Capping "permanent" is a pragmatic hedge: correct invalidation still works and nothing changes, but a missed invalidation self-corrects within the cap instead of never.

**It is a mitigation, not a fix, and should be described as one.** A site relying on a cap to hide broken invalidation has a bug it is no longer seeing, and the cap makes it intermittent rather than absent — which is harder to diagnose, not easier. The right use is as a safety net on a site where some data comes from outside Drupal's invalidation reach, with the cap set long enough that it does not mask a real problem.

The performance trade is straightforward: a shorter cap means more recomputation. Set it against how long stale data is acceptable, not against how often you want cache misses.

---

- Cap how long a permanent cache item lives.
- Self-correct after a missed invalidation.
- Hedge against a cache tag that never fires.
- Handle data changing outside Drupal.
- Avoid permanently wrong cached content.
- Set a cap against acceptable staleness.
- Understand it is a mitigation, not a fix.
- Avoid masking a real invalidation bug.
- Diagnose stale content on a site with a cap.
- Trade recomputation against staleness.
- Apply the backend to specific bins.
- Investigate why an item never invalidated.
- Audit cache invalidation coverage.
- Plan caching for third-party data.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
