<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia Cloud - Backup Manager applies a retention policy to the *manual* (on-demand) backups on an Acquia Cloud environment, deleting the ones that have aged out on cron via the Cloud API.

---

Acquia Cloud keeps scheduled backups on its own schedule, but on-demand backups — the ones somebody takes before a risky deployment — accumulate until a human removes them. This module is that human: point it at an application and environment, choose either "keep for N days" or "keep the newest N", enable cron, and it prunes the rest.

It talks to the Cloud API, so it needs Cloud API credentials, and that is the part to get right. **The module supports two ways to supply them, and only one is safe.** If the API token and secret are present as environment variables, the client uses them and the settings form hides the credential fields entirely, saying so on screen. That is the configuration to use. Acquia Cloud provides environment variables natively, and this module is only useful on Acquia Cloud, so there is no reason to use the other path.

The other path stores both values in module configuration. Verified: `drush config:get` returns the key and secret in clear, which means a config export writes them into the sync directory and, on nearly every project, into git. Verified separately: both are rendered as plain `textfield`s with the stored value as `#default_value`, so they appear in the settings page HTML in clear rather than being write-only `password` fields.

These credentials are not site-scoped. The Cloud API controls environments, databases, deployments and environment variables for the entire application. Set the environment variables and never fill the form fields in.

---

- Prune on-demand Acquia Cloud backups automatically.
- Keep backups for a fixed number of days.
- Keep a fixed number of the newest backups.
- Run the retention policy on cron.
- Target a specific application and environment.
- Supply Cloud API credentials as environment variables.
- Avoid entering credentials into the settings form.
- Keep the API secret out of exported configuration.
- Keep the API secret out of git.
- Confirm the form hides credential fields when env vars are set.
- Enable cron deletion deliberately — it is opt-in.
- Restrict who holds administer site configuration.
- Use acsf_backup_manager instead on Acquia ACSF.
- Generate a Cloud API key per the Acquia docs.
- Review the retention setting before enabling cron.
- Understand that scheduled backups are not managed here.