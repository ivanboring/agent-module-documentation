<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role Request adds a request→approve workflow for users to be granted roles.

---

Role Request allows users (with `request role`) to request one or more roles, and a role manager (with `administer role requests`) to approve or deny each request; on approval the requested roles are granted to the requester. It provides a self-service role-onboarding workflow.

SECURITY: the request form offers all roles (excluding only anonymous/authenticated), and approval — gated only by `administer role requests` — grants any requested role via `$user->addRole()` with no check for core's `administer permissions` and no `is_admin` filter, so `administer role requests` can grant the `administrator` role → privilege escalation (see local security.md; treat `administer role requests` as equivalent to full admin, and don't offer privileged roles for request). Depends on core `user`; requires Drupal 11.

---

- Let users request roles.
- Configure an approver.
- Approve/deny requests.
- Grant roles on approval.
- Provide self-service role onboarding.
- Gate requesting with `request role`.
- Gate approval with `administer role requests`.
- Grant via `$user->addRole()`.
- Offer all roles (incl. administrator) on the form.
- NOT check core `administer permissions` on grant.
- NOT filter is_admin roles (escalation risk).
- Treat `administer role requests` as full-admin-equivalent.
- Depend on core `user`.
- Require Drupal 11.
- Manage role requests.
- Support onboarding.
- Restrict privileged roles from request
- Approve role grants
