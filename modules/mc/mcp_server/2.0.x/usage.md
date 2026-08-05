<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MCP Server implements the Model Context Protocol in Drupal, exposing site resources, content and APIs as tools an AI assistant can call.

---

MCP is the emerging standard for giving a language model access to a system's capabilities: the server advertises resources, prompts and tools, and an assistant discovers and invokes them. Putting one in front of Drupal means an assistant can read content, search, and — depending on what is exposed — change things, which is genuinely useful for editorial assistance, content operations and site administration, and is a category of integration that did not exist two years ago. Version **2.0.0-beta1** on core `^10 || ^11`, serving `/mcp` (relocatable via the `mcp_server.base_path` parameter), with `no_cache: TRUE` and `_auth: ['cookie']`. The security posture is better than the category average and is worth reading closely, because this is a new kind of surface. **`access mcp server` is `restrict access: true` and, in its own description, "ships ungranted by default"** — an explicit statement that the endpoint is closed until someone opens it, which is the correct default for a capability endpoint. **Authentication is cookie-only**, so there is no bearer-token path to leave lying around, and the assistant acts as a specific Drupal user with that user's permissions. That last point is the one to build on: **every tool call happens as an account, so the account's permissions are the boundary** — an assistant given an administrator session can do whatever an administrator can, and the interesting failure mode is not the module but the prompt, since a model that reads site content and can also act on it can be induced by content it reads to take actions nobody asked for. Treat the account as a service identity with the narrowest permission set the task needs.

---

- Let an AI assistant read site content.
- Expose search to an assistant.
- Support editorial AI assistance.
- Give a model access to site resources.
- Automate content operations.
- Expose Drupal tools over MCP.
- Support an AI-assisted workflow.
- Let an assistant query taxonomy.
- Provide prompts to an AI client.
- Build an AI integration on a standard.
- Expose an API surface to a model.
- Support content review by an assistant.
- Give an assistant a scoped account.
- Automate repetitive editorial tasks.
- Expose site data for analysis.
- Support an AI-driven migration check.
- Build an internal assistant integration.
- Relocate the MCP endpoint path.
