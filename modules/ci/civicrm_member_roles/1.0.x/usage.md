<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CiviMember Roles Sync keeps Drupal roles in step with CiviCRM membership: association rules map a membership type and status to a Drupal role, and the module applies them automatically on cron and on demand.

---

Organisations running CiviCRM behind Drupal usually want "current members get the member role, lapsed members lose it" — and doing that by hand does not scale. The module models each mapping as a `civicrm_member_role_rule` config entity (labelled *Association Rule*), managed at `entity.civicrm_member_role_rule.collection` with a list builder, action links and menu entries. A rule ties a CiviCRM membership type plus the statuses that count as "in" to a Drupal role; the sync service then grants the role to contacts whose membership matches and revokes it from those whose does not. Synchronisation runs automatically (cron) and can be triggered manually, including from the command line — the module ships a `civicrm_member_roles.drush.inc`, so the sync can be scheduled outside Drupal's cron or run after a bulk membership import. Permissions gate rule administration, and the whole thing depends on the `civicrm` module being installed and bootstrapped.

---

- Grant a member role to contacts with a current CiviCRM membership.
- Revoke the role automatically when a membership lapses.
- Map different membership types to different Drupal roles.
- Treat grace-period statuses as still "member".
- Give lifetime members a distinct role.
- Run the sync from cron without manual work.
- Trigger a sync from Drush after a membership import.
- Restrict site content to current members via a role.
- Keep discounted-pricing roles aligned with membership.
- Handle renewals without editor intervention.
- Give committee members an additional role by membership type.
- Audit which rules produce which roles.
- Export association rules as configuration.
- Apply several rules to one contact.
- Remove access promptly when a membership is cancelled.
- Align Drupal permissions with CiviCRM's source of truth.
- Support multiple membership programmes on one site.
- Reduce support tickets about lost member access.
- Sync roles after migrating membership data.
- Schedule syncs at a specific time via Drush and system cron.
