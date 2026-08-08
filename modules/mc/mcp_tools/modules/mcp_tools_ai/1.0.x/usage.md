<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bridges MCP Tools into the Drupal **AI** module's function-calling interface, so the same tool plugins MCP exposes over its own transports become functions an LLM configured through the AI module can call directly.

---

The AI module provides a provider-agnostic way to talk to language models and a mechanism for exposing PHP functions to them. This submodule registers MCP Tools' tool plugins there, so a chat or automator built on the AI module can drive Drupal through the same audited tool surface — rather than each integration reinventing content creation or configuration access.

Everything the parent's access model enforces still applies: only enabled submodules' tools appear, read-only and config-only modes still gate writes, and each domain's permission is still required. This submodule adds a consumer of the tools, not a way around their controls.

Enable it only if the site uses the AI module and wants MCP's tools available to it. On a site using MCP purely over STDIO or the remote HTTP endpoint, it is unnecessary.

---
- Expose MCP tools to the AI module.
- Let an LLM call Drupal operations as functions.
- Drive content creation from an AI automator.
- Reuse the audited MCP tool surface in AI chat.
- Keep read-only mode enforced for AI callers.
- Keep per-domain permissions enforced for AI callers.
- Enable only when the AI module is in use.
- Avoid reinventing tool access per AI integration.
- Combine with the content or structure submodules.
- Gate AI-driven writes behind a write scope.
- Rate-limit AI-driven tool calls.
- Run AI-invoked tools as a least-privilege user.
- Audit which tools the AI module can reach.
- Skip it on STDIO-only or remote-only sites.
- Pair with the ai module's provider configuration.
- Restrict the AI caller to the domains it needs.