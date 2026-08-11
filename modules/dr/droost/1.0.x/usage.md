<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Droost exposes application/codebase introspection and gated write tools to AI coding agents over MCP.

---

Droost **exposes Drupal application/codebase introspection and tiered, gated write tools to AI coding agents
over MCP** (Model Context Protocol) — a "Drupal analog of Laravel Boost" that lets an AI coding agent inspect the
codebase/site and perform certain write operations to accelerate development. It depends on the MCP Server module,
provides its own permissions, in the Droost package.

Use it as a local dev accelerator. It is a **developer-only** tool with a critical deployment rule that the module
itself states: **local development only — install it with `require-dev` and DO NOT run it in production.** The
reason is security: it grants an external agent **introspection of your codebase and gated write capabilities**;
exposing that on a production/internet-facing site would be a serious remote-code/data exposure risk. Keep the MCP
endpoint bound to local/trusted access, never enable it in a production environment, and treat its permissions as
highly sensitive. Use it only in local development.

---

- Expose introspection to AI agents over MCP.
- Offer tiered, gated write tools.
- Accelerate Drupal development.
- Depend on the MCP Server module.
- Provide its own permissions.
- Act as a Drupal Laravel-Boost analog.
- BE local-development-only (install with require-dev).
- NOT be installed/run in production (RCE/data-exposure risk).
- Keep the MCP endpoint bound to local/trusted access.
- Treat its permissions as highly sensitive.
- Use it only in local development.
- Handle dev introspection.
- Introspect the codebase.
- Configure the MCP server.
- Expose dev tools.
- Handle the agent.
- Assist AI coding.
- Gate write tools.
- Never run in production.
- Provide MCP dev tooling.
