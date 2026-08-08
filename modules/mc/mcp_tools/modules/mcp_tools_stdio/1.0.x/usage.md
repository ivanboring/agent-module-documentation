<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Runs the MCP server over **STDIO** through a Drush command, which is how a local assistant such as Claude Desktop connects to a development site.

---

STDIO is the simplest MCP transport: the client launches a process and speaks the protocol over its standard input and output. There is no network endpoint, no port, and nothing for a remote party to reach — the client and server share a machine and a process boundary. That is exactly what you want for local development, and the module's own description recommends it for that.

Because there is no HTTP surface, the remote endpoint's concerns (IP allowlists, API keys, origin checks) do not apply here — the trust boundary is the shell that launches Drush. The parent's access model still governs what the tools may do: read-only mode, scopes and per-domain permissions all apply, and the tools still run as the configured execution user.

Use this for local work with a desktop assistant. Use `mcp_tools_remote` when an assistant must reach the site over the network.

---
- Connect a local assistant to a dev site.
- Run MCP over STDIO via Drush.
- Use Claude Desktop against local Drupal.
- Avoid opening a network endpoint for local work.
- Keep the trust boundary at the shell.
- Develop MCP integrations locally.
- Keep read-only mode enforced over STDIO.
- Keep scopes enforced over STDIO.
- Run STDIO tools as the execution user.
- Prefer STDIO over HTTP for local development.
- Skip API keys for a local connection.
- Test tool behaviour before exposing remotely.
- Drive the site from a terminal-launched assistant.
- Pair with per-domain submodules you want available.
- Choose remote transport for networked access instead.
- Debug tool calls in a local process.