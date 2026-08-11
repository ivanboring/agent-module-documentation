<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Workspace gives each user a persistent, streaming AI chat workspace over the Drupal AI module.

---

AI Workspace provides a per-user AI chat workspace: each user gets their own persistent conversation history, streaming responses, and provider-agnostic model selection driven by the Drupal AI module. It's aimed at giving staff a ChatGPT-style workspace inside Drupal with saved conversations and configurable models/tools.

Permissions separate usage (`use ai workspace`), administration (`administer ai workspace`), and model/tool management (`manage ai workspace models`, `manage ai workspace tools`). Conversations persist per user and may contain sensitive prompts; keep usage to authenticated staff and scope model/tool management to admins. Depends on core `user`, `system`, and `ai`; supports Drupal 10.4+ and 11.

---

- Give each user an AI chat workspace.
- Persist conversation history per user.
- Stream AI responses.
- Select models provider-agnostically.
- Offer a ChatGPT-style UI in Drupal.
- Gate usage with `use ai workspace`.
- Gate admin with `administer ai workspace`.
- Gate model management with `manage ai workspace models`.
- Gate tool management with `manage ai workspace tools`.
- Store conversations (possibly sensitive).
- Keep usage to authenticated staff.
- Scope model/tool management to admins.
- Depend on core `user`, `system`.
- Depend on the `ai` module.
- Support Drupal 10.4+ and 11.
- Configure available models/tools.
- Provide streaming chat.
- Save and resume conversations.
- Use the site's AI providers (cost).
- Manage per-user workspaces.
