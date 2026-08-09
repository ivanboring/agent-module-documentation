<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Agents Debugger — agent index

A **debugging tool for monitoring AI agent actions, thoughts and responses** (troubleshoot agent behaviour).
Depends on `ai_agents`. Provides permissions. Version **1.0.0-beta2**. Core `^10.3||^11`.

Developer/AI — agent traces can hold **sensitive data** (prompts, tool I/O, retrieved content, credentials):
gate the debug permission to **trusted developers**; prefer not enabling on production. No access role beyond
permission.
