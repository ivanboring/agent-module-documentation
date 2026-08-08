<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Plus provides functionality to install new configuration and to detect configuration that was created incorrectly, aiding configuration management workflows.

---

Config Plus adds helpers around Drupal's configuration system: it can install new configuration and
check for wrongly-created configuration — for example config that was created without proper
dependencies, ownership, or naming — which is a common source of problems in configuration-management
workflows and deployments. It targets developers and site builders who manage config as code and want
to catch config that is malformed or created outside the expected process.

Use it during development and deployment to surface configuration issues before they cause errors, and
to install configuration that the standard workflow does not pick up cleanly. It is a developer/admin
tooling module operating on the config system; it has no runtime end-user access-control role. Treat
its checks as a linting/validation aid for config hygiene.

---

- Install new configuration into Drupal.
- Detect incorrectly-created configuration.
- Catch config with missing dependencies.
- Aid configuration-management workflows.
- Lint config created outside the process.
- Surface malformed config before errors.
- Support config-as-code deployments.
- Check config ownership and naming.
- Help developers manage config hygiene.
- Validate configuration during development.
- Install config the standard workflow misses.
- Flag wrongly-created config entities.
- Improve deployment reliability.
- Operate on the config system.
- Provide no end-user access-control role.
- Act as a config linting aid.
- Verify config before import.
- Assist site builders with config checks.
- Reduce config-related deployment errors.
- Report on questionable configuration.
