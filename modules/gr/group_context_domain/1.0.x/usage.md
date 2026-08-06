<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Context Domain derives the active Group from the current domain, so blocks and other context-aware code can consume it.

---

A common multi-tenant shape in Drupal is Group for the tenancy model and Domain for the addressing: each tenant is a Group, each has its own domain, and one Drupal serves all of them. The gap is that Group's context is normally derived from the route — you are in a Group because you are looking at Group content — while on a tenant site the Group is implied by the hostname regardless of what page you are on.

This module closes that: the domain determines the Group context, so a block placed with a Group context condition works on the tenant's homepage, not only on its Group pages.

**Context is presentation plumbing, not access control**, and that distinction is the important one here. Deriving a Group from the domain tells blocks and plugins which tenant is active; it does not stop content from one tenant being reachable on another's domain. On a multi-tenant site where tenants must not see each other's data, the access model is Group's permissions and whatever domain access module is in play — this makes the UI coherent, not the boundary.

Worth confirming what happens when a domain has no Group, or two Groups claim the same domain, since both are configuration states a real site reaches.

---

- Derive a Group from the current domain.
- Show tenant-specific blocks on a homepage.
- Use Group context away from Group pages.
- Run one Drupal for several tenants.
- Combine Group with Domain addressing.
- Place a block by Group context.
- Recognise context is not access control.
- Enforce tenancy with Group permissions.
- Confirm domain access is configured separately.
- Handle a domain with no Group.
- Handle two Groups claiming one domain.
- Audit multi-tenant boundaries.
- Plan a multi-tenant architecture.
- Test cross-domain content reachability.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
