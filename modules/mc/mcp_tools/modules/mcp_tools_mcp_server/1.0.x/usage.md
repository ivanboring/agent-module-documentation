<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A thin bridge that registers MCP Tools' tools with the separate contrib **mcp_server** module, for sites that already run that server and want MCP Tools' surface available through it.

---

`mcp_server` is a different MCP server implementation. Some sites standardise on it. This submodule lets MCP Tools' domain tools be served through that server instead of (or alongside) MCP Tools' own transports, so a site does not have to choose one project's tools over the other's.

It is explicitly optional and version-bounded — it requires `mcp_server < 2.0` — so it is only relevant when that module is present and at a compatible version. On a site using MCP Tools' own STDIO or remote transport, it does nothing useful and should stay disabled.

The parent's access controls continue to apply to the bridged tools; this changes the transport, not the authorization.

---
- Serve MCP Tools through the mcp_server module.
- Bridge to an existing mcp_server deployment.
- Reuse MCP Tools' domains on another server.
- Enable only when mcp_server is installed.
- Respect the mcp_server < 2.0 version bound.
- Keep MCP Tools' access model on bridged tools.
- Avoid choosing between two MCP projects' tools.
- Keep it disabled without mcp_server.
- Standardise on one MCP server implementation.
- Expose the same tools over a second transport.
- Gate bridged writes behind scopes.
- Enforce per-domain permissions on bridged tools.
- Run bridged tools as the execution user.
- Audit which tools the bridge exposes.
- Check version compatibility before enabling.
- Prefer native transports when mcp_server is absent.