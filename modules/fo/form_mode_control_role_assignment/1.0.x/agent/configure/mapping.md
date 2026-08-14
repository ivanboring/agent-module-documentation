<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Form Mode Control Role Assignment — mapping & risk

## Configure
`/admin/config/people/form-mode-role-mapping` (`FormModeRoleMappingForm`, `administer site configuration`). For each user form mode returned by `entity_display.repository:getFormModes('user')`, choose a role (or "- No Role -"). Saved as `role_mappings.<form_mode_id>` in `form_mode_control_role_assignment.settings`.

## How the role is applied
1. `hook_form_user_register_form_alter` reads `\Drupal::request()->query->get('display')`; if a mapping exists it hides `account/roles` and pre-checks the mapped role.
2. `hook_user_presave` re-reads the `display` query param and calls `$account->addRole($role)` for the mapped role on any user save in that request.
3. `UserRegistrationRoleSubscriber::onUserRegister` adds the role on `USER_REGISTER` using the routed `form_mode` parameter.

## Privilege-escalation caution
The applied role depends solely on the request `display` value and the stored mapping — there is **no check that the current user may receive that role** and **no restriction to "self-registration-safe" form modes**. Consequences:
- Map only non-privileged roles (never `administrator` or roles with `administer permissions`/`administer users`).
- Keep "Visitors can register but administrator approval required" enabled if any mapped role is sensitive.
- Because `hook_user_presave` fires on any save while `?display=<mapped_mode>` is present, avoid mapping form modes whose ids a low-trust user can supply.
