<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Suite adds import, export and automation around Drupal's configuration management, from a single administration screen.

---

Core's configuration workflow is a pair of commands and a synchronise screen, and it assumes a discipline that real teams do not maintain: change configuration, export it, commit it, import it elsewhere. The gaps are familiar. Someone changes a setting on production and forgets to export, so the next import silently reverts it. A partial export is difficult, so a developer working on one feature exports everything and produces a diff nobody can review. And there is no automation, so every step is a command somebody has to remember. This module collects improvements in that area behind `administer config suite`. Version **2.0.5** on core `^10.1 || ^11`. Two things to think about before adopting a tool in this space, both of which decide more than the tool does. **Automating export changes what a diff means**: once configuration is exported automatically, the diff stops being a record of deliberate change and becomes a record of everything including accidents, so the review step moves from "export" to "commit" and someone has to be doing it — the same point that applies to `config_auto_export`, documented earlier in this campaign. And **the durable answer to configuration drift is usually `config_readonly` rather than better export tooling**: making production configuration immutable removes the whole class of problem instead of managing it, at the cost of the friction that `config_readonly_menu_ui` exists to carve exceptions into. Reach for automation where the team genuinely cannot lock production, and for the lock where it can.

---

- Export configuration from an admin screen.
- Import configuration without the CLI.
- Automate a configuration workflow.
- Reduce configuration drift.
- Export a subset of configuration.
- Support a team without CLI access.
- Review configuration changes before import.
- Automate export after a change.
- Support a config-driven deployment.
- Reduce forgotten exports.
- Manage configuration on a hosted platform.
- Compare active and stored configuration.
- Support a client-managed site.
- Simplify a configuration handover.
- Export configuration for a migration.
- Support an agency workflow.
- Reduce configuration mistakes.
- Manage config without drush.
