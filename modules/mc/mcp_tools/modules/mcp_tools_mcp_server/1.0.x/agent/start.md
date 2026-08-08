<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_mcp_server — agent index

Submodule of **mcp_tools**. Optional bridge exposing MCP Tools through the contrib mcp_server module when it is installed. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`, `mcp_server:mcp_server (<2.0)`.

The parent's access model still governs it: only-if-enabled availability, global read-only mode,
connection scopes, and per-domain permissions all apply. See [[mcp_tools]].