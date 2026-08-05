<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SAML Authentication Restrict to OU refuses site access to SAML-authenticated users whose Organizational Unit attribute is not on an approved list.

---

Federated login answers *who you are* and says nothing about *whether you belong here*. A university identity provider authenticates every student, every member of staff and every contractor; an enterprise one authenticates the whole company. A site meant for one faculty, one department or one business unit therefore needs a second gate after authentication succeeds, and the **Organizational Unit** attribute — carried in SAML assertions and inherited from the LDAP directory conventions behind most identity providers — is the usual discriminator. This module applies that check against a configured list, so an authenticated user from the wrong OU is turned away rather than silently given an account. It depends on `samlauth`, version **1.0.5** on core `^10 || ^11`, with settings at `/admin/config/people/saml-restrict` behind a `restrict access: true` permission — appropriate, since the configuration screen is the access-control policy itself. Three things determine whether the gate is trustworthy. **OU values are strings from another system**, so a directory reorganisation renames them and the list stops matching, usually by locking everyone out — decide who watches for that. **A user may have multiple OU values** or a nested path, so establish whether matching is exact, prefix or substring, since a substring match on `Finance` also admits `Finance Contractors`. And **the check must apply on every login, not only at account creation**: someone who moves to a different OU should lose access, and if the local account persists and remains usable, the restriction has become a one-time filter rather than an ongoing control.

---

- Restrict a site to one faculty.
- Allow only one department to log in.
- Gate access by directory OU.
- Refuse authenticated users from elsewhere.
- Limit an intranet to a business unit.
- Add authorisation after SSO.
- Prevent contractors from accessing a site.
- Restrict a research site to one school.
- Enforce an access policy from the directory.
- Avoid manual account approval.
- Limit a project site to its team.
- Use existing directory structure for access.
- Restrict a staff-only site.
- Keep student accounts out of a staff tool.
- Apply an organisational access rule.
- Support a devolved university structure.
- Reduce account provisioning work.
- Enforce a group-wide access standard.
