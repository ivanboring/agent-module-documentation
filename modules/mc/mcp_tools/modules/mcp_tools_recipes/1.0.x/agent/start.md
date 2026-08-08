<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_recipes — agent index

Submodule of **mcp_tools** — MCP tools for recipe management. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`.
Permission: `mcp_tools use recipes`.

**Tools (6):** `ApplyRecipe`, `CreateRecipe`, `GetAppliedRecipes`, `GetRecipe`, `ListRecipes`, `ValidateRecipe`.

Governed entirely by the parent's access model — enabled-only availability, global read-only mode,
`read`/`write`/`admin` scopes, per-domain permission, execution-user identity, rate limiting.
See [[mcp_tools]] for the model. This submodule only adds the tools; it changes no controls.