<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MCP Tools — Site-structure building adds the MCP tools for content types, fields, vocabularies, terms, roles and permissions — the widest-reaching submodule.

---

This is one of MCP Tools' 37 domain submodules. Enabling it registers a set of tool plugins that an AI assistant, connected through one of the parent module's transports, can call to work with site-structure building on the site. It exposes nothing on its own — it is a capability the parent's server offers once this submodule is on.

The tools it provides are: `AddField`, `CreateContentType`, `CreateRole`, `CreateTerm`, `CreateTerms`, `CreateVocabulary`, `DeleteContentType`, `DeleteField`, `DeleteRole`, `GetContentType`, `GetRolePermissions`, `GetVocabulary`, `GrantPermissions`, `ListContentTypes`, `ListFieldTypes`, `ListRoles`, `ListVocabularies`, `RevokePermissions`, `ScaffoldContentType`, `SetupTaxonomy`. Each is a discrete operation the assistant invokes by name with typed arguments; there is no free-form access beyond them.

Every control the parent enforces applies here without exception. The tools appear only because this submodule is enabled; the global read-only mode blocks their writes; a connection's scope (`read`/`write`/`admin`) governs what it may do; the `mcp_tools use structure` permission is required; and each call runs as the configured execution user, rate-limited. Enable this submodule when an assistant should be able to work with site-structure building, and leave it off otherwise — the surface area you expose is exactly the set of submodules you turn on.

---
- Have the assistant add field.
- Have the assistant create content type.
- Have the assistant create role.
- Have the assistant create term.
- Have the assistant create terms.
- Have the assistant create vocabulary.
- Have the assistant delete content type.
- Have the assistant delete field.
- Have the assistant delete role.
- Have the assistant get content type.
- Have the assistant get role permissions.
- Have the assistant get vocabulary.
- Have the assistant grant permissions.
- Have the assistant list content types.
- Have the assistant list field types.
- Have the assistant list roles.
- Have the assistant list vocabularies.
- Have the assistant revoke permissions.
- Have the assistant scaffold content type.
- Have the assistant setup taxonomy.
- Enable this submodule to expose the site-structure building domain.
- Keep it disabled to hide these tools entirely.
- Gate it behind the `mcp_tools use structure` permission.
- Block its writes with the server's global read-only mode.
- Restrict a connection to read scope to prevent its writes.
- Run its tools as a least-privilege execution user.
- Rate-limit how often an assistant calls these tools.
- Audit which of its tools are exposed on the MCP status page.