<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_menus — agent index

Submodule of **mcp_tools** — MCP tools for menu management. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`, `drupal:menu_link_content`.
Permission: `mcp_tools use menus`.

**Tools (5):** `AddMenuLink`, `CreateMenu`, `DeleteMenu`, `DeleteMenuLink`, `UpdateMenuLink`.

Governed entirely by the parent's access model — enabled-only availability, global read-only mode,
`read`/`write`/`admin` scopes, per-domain permission, execution-user identity, rate limiting.
See [[mcp_tools]] for the model. This submodule only adds the tools; it changes no controls.