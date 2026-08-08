<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Anonymous session toolkit adds consistent session usage for anonymous users, giving custom code a reliable anonymous session.

---

Anonymous session toolkit provides a service for consistent session handling for anonymous users — so
custom code can reliably store and read per-visitor session data for logged-out users (anonymous carts,
preferences, wizard state). It wraps Drupal's core SessionManager to establish and use an anonymous
session.

Use it as a developer dependency where anonymous per-visitor state is needed. It builds on core session
management (so session security is core's). One important operational caveat: **giving anonymous users a
session disables the anonymous page cache for those requests** — Drupal does not serve cached pages to
anonymous users who have a session — so use it only where the stateful behaviour is worth the caching
cost, and scope it to the relevant paths. It has no access-control role.

---

- Provide anonymous sessions for custom code.
- Store per-visitor state for logged-out users.
- Wrap core SessionManager.
- Support anonymous carts/preferences.
- Read anonymous session data.
- Build on core session management.
- Rely on core session security.
- Know it disables the anonymous page cache.
- Scope it to relevant paths.
- Weigh statefulness vs caching cost.
- Have no access-control role.
- Use as a developer dependency.
- Establish an anonymous session.
- Persist wizard state anonymously.
- Read/write anonymous state.
- Handle logged-out session data.
- Provide a session service.
- Support anonymous personalization.
- Mind the page-cache impact.
- Use core session handling.
