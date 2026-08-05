<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CiviMember Roles Sync (civicrm_member_roles) — agent index

Synchronises CiviCRM membership status onto Drupal roles. Requires the **`civicrm`** module.
Config UI via `entity.civicrm_member_role_rule.collection` (`configure` in info.yml).
Installed release **8.x-1.0-rc1**. Ships permissions, config schema and a Drush include.

Key facts:
- Config entity **`civicrm_member_role_rule`** (label *Association Rule*),
  `Entity/CivicrmMemberRoleRule.php`, with `EntityViewBuilder` and
  `CivicrmMemberRoleRuleListBuilder`; admin routes plus action and menu links.
  Each rule maps a CiviCRM **membership type** + the **statuses** that count as current onto a
  **Drupal role**.
- Sync runs on **cron** and on demand; `civicrm_member_roles.drush.inc` provides the CLI entry
  point (legacy Drush include style, so check `drush list | grep civicrm` for the exact command
  name on your Drush version).
- `civicrm_member_roles.services.yml` holds the sync service; `civicrm_member_roles.module` wires
  the hooks.
- Permissions are defined in `civicrm_member_roles.permissions.yml` — grant rule administration
  only to staff who should be able to change who gets which role.

Operational notes:
- The sync is **authoritative**: a role granted by a rule is also **revoked** by that rule when
  the membership no longer matches. Do not hand-assign a role that a rule manages, or the next
  sync will remove it.
- CiviCRM must be bootstrappable from Drupal for the sync to run; failures usually trace back to
  CiviCRM's own settings rather than this module.
- Run a sync after bulk membership imports rather than waiting for cron.
