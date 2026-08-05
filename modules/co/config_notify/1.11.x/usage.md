<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Notify watches whether the site's active configuration differs from what is exported, and sends a notification when it does — catching configuration drift before it becomes a failed deployment.

---

On a Drupal site that manages configuration in git, someone changing a setting through the admin UI on production creates drift: the active configuration no longer matches the exported files, and the next `drush cim` will either overwrite the change or fail. The failure mode is that nobody notices until deploy day. This module makes the divergence visible: `NotifierService` checks configuration status and sends notifications accordingly, with a settings form at `/admin/config/development/configuration/notify` gated by core's `synchronize configuration` permission — an appropriate reuse, since that is already the permission for configuration import and export. It depends on core `config` alone, with a wide range of `^8.8 || ^9 || ^10 || ^11`. Two practical notes: notifications need a trigger, so this belongs on cron rather than being checked manually; and a site will always have *some* expected drift — modules that write configuration at runtime, or configuration deliberately ignored via `config_ignore`/`config_split` — so the check needs tuning to be useful rather than noisy.

---

- Detect configuration drift on production.
- Notify a team when config diverges from git.
- Catch an undeployed UI change before release.
- Monitor config status on cron.
- Prevent a surprise at deployment time.
- Alert on unexpected configuration changes.
- Support a config-in-code workflow.
- Notify when a config import is pending.
- Watch several environments for drift.
- Reduce failed deployments.
- Detect a change made outside the process.
- Reinforce a configuration governance policy.
- Alert developers to an emergency UI fix.
- Track when drift first appeared.
- Support an audit of change control.
- Encourage exporting after a change.
- Watch staging for divergence.
- Reduce time spent diagnosing import failures.
