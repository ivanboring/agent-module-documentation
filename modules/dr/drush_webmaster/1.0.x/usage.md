<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drush Webmaster provides a set of validated Drush commands for AI-assisted site management — creating content types, fields and media types, and running searches — with input validators rather than arbitrary execution.

---

Drush Webmaster provides Drush commands intended for AI-assisted (agent-driven) site management. It
exposes structured commands to create and manage content types, fields and media types, and to run
searches via core Search — each backed by input validators (for example `ContentTypeValidator` and
`FieldValidator`) that check machine names and bundle/entity references before acting. It is designed
so an AI agent can drive routine site-building tasks through a safe, well-defined command surface
rather than by generating and executing arbitrary code. Requires PHP 8.1 and depends on core node,
field and user.

Use it to let an agent (or a webmaster) perform structured configuration operations from the CLI with
validation guarding the inputs. Because these commands create configuration and content structures,
access is governed by Drush/CLI access (already a privileged context) plus the module's permissions;
the validators reduce foot-guns but the commands still perform real structural changes, so run them in
appropriate environments. It does not shell out to execute AI output — the AI's role is to choose and
parameterise the provided commands.

---

- Run validated Drush commands for site management.
- Let an AI agent manage the site via CLI.
- Create content types from the command line.
- Add fields with validation.
- Create media types via Drush.
- Run core searches from the CLI.
- Validate machine names before acting.
- Check bundle/entity references in commands.
- Avoid executing arbitrary AI code.
- Require PHP 8.1.
- Depend on node, field and user.
- Provide a safe agent command surface.
- Guard inputs with validators.
- Perform structured config changes.
- Build site structure programmatically.
- Reduce foot-guns via validation.
- Run in appropriate environments only.
- Govern access via Drush + permissions.
- Parameterise provided commands with an agent.
- Manage content structures from the CLI.
