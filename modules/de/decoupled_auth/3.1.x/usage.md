<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled User Authentication allows decoupling of Drupal Authentication from Drupal Users, so users can exist without the ability to log in.

---

Decoupled User Authentication decouples authentication from Drupal user entities — allowing user records
to exist **without authentication** (no username/password/login capability), so you can store people as
Drupal users (for CRM, mailing lists, relationships) without them being login accounts. It ships a
`decoupled_auth_crm` submodule and is in the Tool package.

Use it to manage login-less user records (e.g. CRM contacts) alongside real accounts. This is a **security-
positive** design point: decoupled users **cannot log in** (they have no authentication), so creating many
contact records doesn't create login accounts/attack surface — the login-less state is enforced. When
adopting: be clear which users are "coupled" (can log in) vs "decoupled" (cannot), and ensure any process
that later couples a user (grants login) is deliberate/trusted. It has no other access-control role. Configure
the decoupled-user behaviour.

---

- Let user records exist without login.
- Decouple authentication from users.
- Store CRM contacts as users.
- Ship a CRM submodule.
- Create login-less user records.
- Avoid creating login accounts for contacts.
- Enforce that decoupled users can't log in.
- Distinguish coupled vs decoupled users.
- Make coupling (granting login) deliberate.
- Have no other access-control role.
- Configure decoupled users.
- Manage login-less users.
- Handle CRM users.
- Configure the behaviour.
- Store people as users.
- Handle decoupled auth.
- Manage contacts.
- Configure users.
- Separate auth from users.
- Create contact records.
