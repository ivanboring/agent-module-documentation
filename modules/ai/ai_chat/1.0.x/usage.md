<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Chat places a floating AI chat using ai_agents.

---

AI Chat **places a floating AI chat widget** on the site — a chat bubble backed by the AI Agents / AI
Assistant API, letting visitors converse with an AI assistant configured in Drupal. It depends on AI Agents, AI
Assistant API and core User, in the AI Tools package.

Use it to add an AI chat assistant. It is an AI feature. Security/data handling: conversations are **sent to the
configured AI provider** (external egress — confirm acceptable, and don't let the assistant expose data/tools it
shouldn't), the provider **API key** is stored via the AI module's Key config (secret), and any tools/agents the
assistant can call should be **scoped** so an untrusted chatter can't trigger privileged actions. It has no
access-control role of its own. Configure the assistant, agents and provider.

---

- Place a floating AI chat widget.
- Back it with AI Agents/Assistant API.
- Let visitors chat with an AI.
- Depend on AI Agents/Assistant API/User.
- Serve AI features.
- Configure the assistant.
- Send conversations to the AI provider (egress).
- Store the provider key via AI/Key (secret).
- Scope the assistant's tools/agents.
- Not let chatters trigger privileged actions.
- Have no access-control role of its own.
- Configure agents and provider.
- Handle AI chat.
- Add a chat widget.
- Configure the chat.
- Chat with AI.
- Handle the integration.
- Assist visitors.
- Scope the agents.
- Provide an AI chat.
