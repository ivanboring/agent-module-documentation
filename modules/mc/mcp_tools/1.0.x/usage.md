<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MCP Tools is a Model Context Protocol server for Drupal. It exposes site operations — content CRUD, configuration, users, cache, structure, and much more — as MCP tools an AI assistant can call, and wraps them in a layered access-control model built for the fact that the caller is a language model, not a person.

---

The Model Context Protocol is the interface an assistant like Claude uses to call out to external systems. This module makes a Drupal site one of those systems: each operation is a **tool plugin** (`Plugin/tool/Tool/*`), grouped into 37 submodules by domain, so a site enables only the surfaces it wants exposed. Nothing is exposed by simply installing the base module — `AccessManager` states the first control plainly: *only installed modules' tools are available*.

The access model is the reason to take this module seriously, and it is unusually well built. `AccessManager` describes three layers: module-based availability, a site-wide **read-only mode** that blocks every write regardless of anything else, and per-connection **scopes** (`read`, `write`, `admin`). On top of those sits a **config-only mode** that restricts writes to chosen *kinds* (`config`, `content`, `ops`), a per-tool permission for every domain (`mcp_tools use content`, `mcp_tools use users`, …), and rate limiting. The settings distinguish `default_scopes` from `allowed_scopes` (a ceiling a connection cannot exceed), and the scope-trust toggles are defaulted with care: `trust_scopes_via_env` is on (the environment is server-controlled) while `trust_scopes_via_header` and `trust_scopes_via_query` are off (those are client-controlled). That is the correct default posture, and it is worth preserving.

Two transports carry the protocol. **STDIO** (`mcp_tools_stdio`) runs over Drush and is the recommended local-development path. **Remote HTTP** (`mcp_tools_remote`) exposes an endpoint at `/_mcp_tools` with its own defense-in-depth pipeline — see that submodule's notes; it is the surface to configure most carefully, because it is the one reachable from the network.

Because every tool runs as a configured Drupal user, the identity that MCP acts as is a real security decision. The remote transport refuses to run as uid 1 unless an explicit override is set. Treat the execution user like a service account: give it exactly the permissions the exposed tools need and no more.

---

- Let an AI assistant create and edit content.
- Let an assistant manage taxonomy and fields.
- Expose only the domains you choose, per submodule.
- Keep the whole server read-only site-wide.
- Restrict an assistant to configuration changes only.
- Give a connection read-only scope by default.
- Cap the maximum scope a connection can request.
- Require a permission per exposed domain.
- Run MCP over STDIO for local development.
- Expose MCP over HTTP for a remote assistant.
- Rate-limit an assistant's tool calls.
- Run tools as a dedicated, least-privilege user.
- Refuse to run as uid 1 without an explicit override.
- Audit which tools are exposed on the status page.
- Keep client-supplied scope headers untrusted.
- Trust only the server-set scope environment variable.
- Preview a configuration operation before applying it.
- Turn off write access during an incident.
- Grant an assistant structure-building tools for a scaffold.
- Review the access model before exposing the endpoint.
- Enable a single submodule to expose one domain.
- Keep production writes gated behind config-only mode.