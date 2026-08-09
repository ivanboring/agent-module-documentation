<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Agents Debugger is a debugging tool for monitoring AI agent actions, thoughts, and responses.

---

AI Agents Debugger is a **debugging tool for the AI Agents module** — it monitors and displays what AI
agents do: their actions, intermediate "thoughts", tool calls and responses, to help developers understand and
troubleshoot agent behaviour. It depends on the AI Agents module, provides its own permissions, in the AI
Tools package.

Use it to debug AI agents during development. It is a developer/AI tool. **Security note:** agent traces can
contain **sensitive data** — prompts, tool inputs/outputs, retrieved content and possibly credentials passed to
tools — so gate the `access`/debug permission to **trusted developers**, and prefer **not enabling it on
production** (or strictly limiting who can view agent traces). It has no access-control role beyond its
permission. Enable it to inspect agent activity.

---

- Monitor AI agent actions.
- Show agent thoughts and responses.
- Trace tool calls.
- Depend on the AI Agents module.
- Help debug agent behaviour.
- Provide its own permissions.
- KNOW traces can contain sensitive data.
- Gate the debug permission to developers.
- Avoid enabling on production.
- Have no access-control role beyond permission.
- Inspect agent activity.
- Handle agent debugging.
- Debug AI agents.
- Configure the debugger.
- Trace agents.
- Monitor agents.
- Handle the tool.
- View agent traces.
- Restrict to developers.
- Provide agent debugging.
