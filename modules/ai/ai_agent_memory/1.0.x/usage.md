<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Agent Memory gives AI Agents persistent memory across turns of a conversation.

---

AI Agent Memory extends the AI Agents framework so an agent retains state — tool-call history, intermediate results, and conversational context — across multiple turns rather than starting fresh each time. This lets multi-step agent workflows reference earlier steps and build on prior tool output.

It depends on `ai_agents` and the AI module's `ai_assistant_api`. Persisted agent memory can contain whatever the conversation surfaced (including data from tools), so treat stored memory as sensitive and scope it per user/session. A developer-facing extension of the AI agent stack.

---

- Persist AI agent state across turns.
- Retain tool-call history.
- Keep conversational context.
- Let agents build on earlier steps.
- Support multi-step agent workflows.
- Depend on `ai_agents`.
- Depend on `ai_assistant_api`.
- Store intermediate agent results.
- Scope memory per user/session.
- Treat stored memory as sensitive.
- Support Drupal 10.3+ and 11.
- Reference prior tool output.
- Extend the AI Agents framework.
- Improve agent continuity.
- Avoid re-running prior steps.
- Enable stateful assistants.
- Integrate with the AI module.
- Provide a memory backend for agents.
- Support taskable AI.
- Manage conversation history.
