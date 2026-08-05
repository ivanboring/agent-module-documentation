<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# MCP Server (mcp_server) — agent index

Implements the **Model Context Protocol**, exposing Drupal resources, prompts and tools to AI
assistants. Endpoint `/mcp` (relocatable via the `mcp_server.base_path` parameter),
`methods: [GET, POST, DELETE, OPTIONS]`, `_format: json`, `no_cache: TRUE`, **`_auth: ['cookie']`**.
Version **2.0.0-beta1** — beta. Core requirement `^10 || ^11`.

**The security posture is better than the category average — read it closely, this is a new kind of
surface:**
- **`access mcp server` is `restrict access: true`** and its description says it **"ships ungranted
  by default; grant to roles that should reach /mcp"** — an explicit closed-by-default statement,
  which is correct for a capability endpoint;
- separate `access mcp server prompts` for discovery;
- **cookie-only authentication**, so there is no bearer token to leave lying around, and the
  assistant acts as **a specific Drupal user**.

**Build on that last point: every tool call happens as an account, so the account's permissions are
the boundary.** An assistant given an administrator session can do whatever an administrator can.

**The interesting failure mode is not the module but the prompt.** A model that **reads** site
content and can also **act** on it can be induced by the content it reads to take actions nobody
asked for. Treat the account as a **service identity with the narrowest permission set the task
needs**, and assume anything the model reads is untrusted input to its own instructions.
