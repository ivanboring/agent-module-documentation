<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# MCP Tools (mcp_tools) — agent index

A **Model Context Protocol** server exposing Drupal operations to AI assistants as **tool
plugins** (`Plugin/tool/Tool/*`). Version **1.0.0-beta18**. Core `^10.3 || ^11`.
Depends on `tool`, `dblog`, `update`. Settings at `/admin/config/services/mcp-tools`
(`administer site configuration`); status at `/admin/config/services/mcp-tools/status`.
Admin permission: `mcp_tools administer`.

**37 domain submodules** — enable only the surfaces you want exposed. Nothing is exposed by
installing the base module alone.

**Access model (`Service/AccessManager.php`) — cite as a strong example.** Layers:
1. **Module-based** — only installed submodules' tools exist.
2. **Global read-only mode** — blocks all writes site-wide.
3. **Connection scopes** — `read` / `write` / `admin`.
Plus **config-only mode** limiting writes to kinds (`config`/`content`/`ops`), a per-domain
permission (`mcp_tools use <domain>`), and rate limiting.

`default_scopes` vs `allowed_scopes` (ceiling). Scope-trust defaults are deliberate:
`trust_scopes_via_env` **on** (server-controlled), `trust_scopes_via_header` /
`trust_scopes_via_query` **off** (client-controlled). Preserve that posture.

**Transports:** `mcp_tools_stdio` (Drush, local dev) and `mcp_tools_remote` (`/_mcp_tools`, network —
configure carefully). Every tool runs as a configured user; remote refuses **uid 1** without an
explicit override. Treat the execution user as a least-privilege service account.