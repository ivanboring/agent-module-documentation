<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_stdio — agent index

Submodule of **mcp_tools**. Exposes MCP Tools over STDIO via a Drush command — the recommended local-development transport. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`.

The parent's access model still governs it: only-if-enabled availability, global read-only mode,
connection scopes, and per-domain permissions all apply. See [[mcp_tools]].