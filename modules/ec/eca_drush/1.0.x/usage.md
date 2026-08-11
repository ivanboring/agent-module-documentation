<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA Drush Integration provides Event-Condition-Action (ECA) integration with Drush.

---

ECA Drush Integration **connects ECA with Drush** — enabling ECA (Event-Condition-Action) models to be
triggered from, or run within, a Drush (CLI) context, so automation can be driven from the command line. It
depends on the ECA module.

Use it to run/trigger ECA models via Drush. It is a developer/automation add-on. Security note: **ECA models are
powerful** — they can create/modify/delete entities, send email, run actions, etc. — so the trust boundary is
**who can author ECA models** (that's an administrative, code-equivalent capability); this module extends where
they run (Drush/CLI, which itself requires shell access). It doesn't broaden ECA's authoring permissions, but keep
ECA model authoring restricted to trusted administrators. Use it to integrate ECA with Drush.

---

- Integrate ECA with Drush.
- Run/trigger ECA models from the CLI.
- Drive automation from Drush.
- Depend on the ECA module.
- Serve developer/automation.
- Extend where ECA runs.
- NOTE ECA models are powerful (entity CRUD, email, actions).
- Keep the trust boundary at who can AUTHOR ECA models (code-equivalent).
- Require shell access for the Drush/CLI context.
- Not broaden ECA's authoring permissions.
- Use it to integrate ECA with Drush.
- Handle ECA-Drush.
- Trigger models.
- Configure ECA.
- Run models.
- Handle the CLI.
- Automate via Drush.
- Restrict model authoring.
- Drive ECA.
- Provide ECA Drush integration.
