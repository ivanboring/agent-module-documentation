<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Environment Variables provides an interface to view (and configure a source for) environment variables; its list page renders the entire process environment.

---

Environment Variables provides an admin interface intended to view a set of user-defined environment
variables loaded from a configured `.env` file, plus a settings form to point at that file. It is
configured at `env_variables.config.form` and provides its own permissions.

**Security caveat — the list page dumps the entire `$_ENV` (see the module's local security notes).**
Although described as viewing "user defined" variables, the list controller renders the whole process
environment — every variable's name **and value** — to a table, gated only by a `View env_variables`
permission that is **not** marked `restrict access: true`. Because the environment is where secrets live
(database password, API keys, tokens — this project's own convention stores keys there), the page exposes
those secret values to anyone holding the permission. Verified on this site: `$_ENV` includes `PGPASSWORD`
(the database password) and dozens of other variables, all of which the page would display in clear text.
Before using it: **do not grant the view permission to any role you would not trust with every secret on
the server**, and treat the page as a full-secrets dump until it is fixed to (a) mark the permission
restricted, (b) list only module-managed variables, and (c) stop printing secret values. It has no
positive access-control role; it is a viewing/config tool with this disclosure risk.

---

- View environment variables in an admin UI.
- Configure the source .env file.
- Configure at env_variables.config.form.
- Provide its own permissions.
- Know the list page dumps ALL of $_ENV.
- Understand it shows names AND values.
- Know it exposes secrets (DB password, API keys).
- Not grant view to untrusted roles.
- Treat the page as a secrets dump.
- Note the permission lacks restrict access.
- See the module's security notes.
- Restrict the view permission tightly.
- Redact/limit displayed values (fix).
- List only module-managed vars (fix).
- Verify $_ENV contents before granting.
- Avoid shoulder-surfing exposure.
- Handle env secrets carefully.
- Understand the disclosure scope.
- Limit who sees the page.
- Mitigate the secrets exposure.
