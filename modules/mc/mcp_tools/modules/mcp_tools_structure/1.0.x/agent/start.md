<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_structure — agent index

Submodule of **mcp_tools** — MCP tools for site-structure building. Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on: `mcp_tools:mcp_tools`, `drupal:field`, `drupal:node`, `drupal:taxonomy`, `drupal:user`.
Permission: `mcp_tools use structure`.

**Tools (20):** `AddField`, `CreateContentType`, `CreateRole`, `CreateTerm`, `CreateTerms`, `CreateVocabulary`, `DeleteContentType`, `DeleteField`, `DeleteRole`, `GetContentType`, `GetRolePermissions`, `GetVocabulary`, `GrantPermissions`, `ListContentTypes`, `ListFieldTypes`, `ListRoles`, `ListVocabularies`, `RevokePermissions`, `ScaffoldContentType`, `SetupTaxonomy`.

Governed entirely by the parent's access model — enabled-only availability, global read-only mode,
`read`/`write`/`admin` scopes, per-domain permission, execution-user identity, rate limiting.
See [[mcp_tools]] for the model. This submodule only adds the tools; it changes no controls.