<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_sitemap — agent index

Submodule of **mcp_tools** — MCP tools for sitemap management. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`, `simple_sitemap:simple_sitemap`.
Permission: `mcp_tools use sitemap`.

**Tools (7):** `GetEntitySettings`, `GetSettings`, `GetStatus`, `ListSitemaps`, `Regenerate`, `SetEntitySettings`, `UpdateSettings`.

Governed entirely by the parent's access model — enabled-only availability, global read-only mode,
`read`/`write`/`admin` scopes, per-domain permission, execution-user identity, rate limiting.
See [[mcp_tools]] for the model. This submodule only adds the tools; it changes no controls.