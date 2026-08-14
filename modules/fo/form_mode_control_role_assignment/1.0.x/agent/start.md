<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Form Mode Control Role Assignment (form_mode_control_role_assignment) — agent index

**Grants a configured role to users registering via a particular user form mode (chosen by `?display=`).**

- **Version:** 1.0.x
- **Core:** `^8 || ^9 || ^10`. **Package:** Custom.
- **Configure:** `/admin/config/people/form-mode-role-mapping` (`administer site configuration`) → `form_mode_control_role_assignment.settings:role_mappings`.
- **Logic:** `hook_form_user_register_form_alter` (hides roles, pre-selects mapped role) + `hook_user_presave` (`$account->addRole()`); `UserRegistrationRoleSubscriber` on `UserEvents::USER_REGISTER`.
- **Role source:** the request `display` query parameter (register form) / routed `form_mode`.

**Security (privilege-escalation surface):** Role assignment is driven by the **attacker-controllable `display` query parameter** with **no allow-list of self-assignable form modes and no capability check on the granted role**. If an admin maps any form mode to an elevated role and self-registration is open, a visitor registering at `/user/register?display=<that_mode>` receives that role — potential privilege escalation. `form_mode_control_role_assignment.module:74-99` (`user_presave` addRole) and `:10-43` (form alter). Reported to the campaign; map only low-privilege roles and keep registration approval on.

See [configure/mapping.md](configure/mapping.md).