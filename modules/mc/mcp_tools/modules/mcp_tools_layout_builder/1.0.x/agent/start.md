<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_layout_builder — agent index

Submodule of **mcp_tools** — MCP tools for Layout Builder control. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`, `drupal:layout_builder`.
Permission: `mcp_tools use layout_builder`.

**Tools (9):** `AddBlock`, `AddSection`, `AllowCustomLayouts`, `DisableLayoutBuilder`, `EnableLayoutBuilder`, `GetLayout`, `ListLayoutPlugins`, `RemoveBlock`, `RemoveSection`.

Governed entirely by the parent's access model — enabled-only availability, global read-only mode,
`read`/`write`/`admin` scopes, per-domain permission, execution-user identity, rate limiting.
See [[mcp_tools]] for the model. This submodule only adds the tools; it changes no controls.