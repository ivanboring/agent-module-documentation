<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MCP Tools — Remote exposes the MCP server over HTTP at `/_mcp_tools`, so an assistant can reach the site across the network. It is the transport to configure most carefully, and its request pipeline is built for that.

---

STDIO works when the assistant and the site share a machine. When they do not — a hosted assistant, a shared environment, an integration reaching a staging site — the protocol has to travel over HTTP, and an HTTP endpoint that drives content, users and configuration is exactly the kind of surface that has to be gated well. This submodule's controller is a defense-in-depth pipeline, and the design is worth stating because it is done thoughtfully.

The route is gated first by an access check that returns **404, never 403, when the remote server is disabled** — so a switched-off endpoint is indistinguishable from one that does not exist. The controller then runs, in order: an **IP allowlist** (miss → 404), an **Origin allowlist** with a same-host default (miss → 404), an **Accept-header** check (wrong → 406), and only then **API-key authentication** (missing/invalid → 401 with `WWW-Authenticate`). The ordering is deliberate and documented in the code: non-allowlisted clients are shown a 404 *before* credentials are ever evaluated, so the endpoint's existence is not disclosed to anyone not already permitted to reach it; the 401 is answered only to allowlisted callers.

API keys are handled properly. They are generated with scopes and an optional TTL, **stored hashed in State — not in exported configuration** — hashed with the site's private key as a pepper, via a dedicated `code-wheel/mcp-security` library rather than hand-rolled comparison. The endpoint accepts either `Authorization: Bearer …` or `X-MCP-Api-Key`. After authentication come server-profile validation, scope resolution, and execution-user resolution — which **refuses to run as uid 1 unless `allow_uid1` is explicitly set**, and refuses to run at all until an execution user is configured.

Verified on this site: with the server disabled the endpoint is a 404, and the concealment and ordering above are the module's stated contract. Configure the allowlists tightly, issue a scoped key per client, and point the execution user at a least-privilege account.

---
- Reach the site from a networked assistant.
- Expose MCP over HTTP at /_mcp_tools.
- Hide the endpoint entirely when disabled.
- Return 404 to non-allowlisted clients.
- Restrict callers by IP allowlist.
- Restrict callers by Origin allowlist.
- Require an API key to authenticate.
- Issue a scoped API key per client.
- Give a key a limited time-to-live.
- Store API keys hashed, not in config.
- Keep keys out of exported configuration.
- Authenticate via Bearer or X-MCP-Api-Key.
- Refuse to run as uid 1 without an override.
- Require an execution user to be configured.
- Run remote tools as a least-privilege account.
- Resolve per-connection scopes from the key.
- Rate-limit a remote client by key id.
- Conceal the endpoint's existence from strangers.
- Answer 401 only to allowlisted callers.
- Configure the allowlists before enabling.
- Audit remote tool calls with observability.
- Prefer STDIO for local development instead.