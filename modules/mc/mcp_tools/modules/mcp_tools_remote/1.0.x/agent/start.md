<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# mcp_tools_remote — agent index

Submodule of **mcp_tools** — exposes MCP over **HTTP** at **`/_mcp_tools`** (GET/POST, `no_cache`).
Version **1.0.0-beta18**. Core `^10.3 || ^11`. Depends on `mcp_tools`.
Settings at `/admin/config/services/mcp-tools/remote` (`mcp_tools administer`).

**Request pipeline (defense-in-depth, cite as a strong example):**
1. Route access check → **404, never 403, when disabled** (concealment; `McpRemoteAccessCheck`).
2. IP allowlist → miss = **404**.
3. Origin allowlist, same-host default → miss = **404**.
4. Accept header → wrong = **406**.
5. API key (`Authorization: Bearer` or `X-MCP-Api-Key`) → missing/invalid = **401** + `WWW-Authenticate`.

Ordering is deliberate and documented: non-allowlisted clients get 404 **before** credentials are
evaluated, so the endpoint's existence is not leaked; 401 is shown only to allowlisted callers.

**API keys (`ApiKeyManager`):** scoped, optional TTL, **stored hashed in State (not config)**,
peppered with the site private key, via `code-wheel/mcp-security` — not hand-rolled.

**Execution user:** must be configured; **refuses uid 1 unless `allow_uid1`** is set. Then
server-profile validation, scope resolution, rate-limit client id = `remote_key:<key_id>`.

Verified: disabled → 404. Configure allowlists tightly; least-privilege execution user. See
[[mcp_tools]].