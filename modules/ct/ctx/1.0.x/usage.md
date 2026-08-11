<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CTX offers Drush commands that surface site context to AI agents (via mcp_core).

---

CTX provides Drush commands that expose site context — structure, configuration, and state — for consumption by AI agents, integrating with the mcp_core (Model Context Protocol) module. It gives an AI agent a command-line way to understand the site it's operating on.

Because it surfaces site context and runs via Drush, treat CLI access as trusted-operator-only. Depends on core `file` and `mcp_core`; requires Drupal 11.3+.

---

- Expose site context via Drush.
- Surface structure/config/state.
- Feed context to AI agents.
- Integrate with mcp_core (MCP).
- Give agents a CLI context source.
- Run via Drush.
- Treat CLI as trusted-operator-only.
- Depend on core `file`.
- Depend on `mcp_core`.
- Require Drupal 11.3+.
- Support AI tooling.
- Provide context commands.
- Aid AI agents.
- Describe the site to agents.
- Support MCP workflows.
- Run headlessly.
- Expose site metadata.
- Complement AI agents.
