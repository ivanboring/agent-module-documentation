<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Adds observability for MCP Tools: a record of which tools an assistant invoked, so the activity of a non-human caller is not opaque.

---

An assistant driving a site through MCP can make many changes quickly, and the operator's usual instinct — read the logs — only works if the activity is logged in a useful shape. This submodule provides that instrumentation, so tool invocations can be reviewed after the fact and monitored while they happen.

For a system whose entire premise is letting an automated caller act on the site, this is not optional infrastructure so much as the thing that makes the rest auditable. Enabling it alongside the transports is the difference between "an assistant changed something" and "this tool was called, with these arguments, at this time."

The parent already depends on `dblog`; this builds the MCP-specific view on top.

---
- See which MCP tools were invoked.
- Audit an assistant's activity after the fact.
- Monitor tool calls as they happen.
- Make automated changes traceable.
- Review tool arguments for a change.
- Pair observability with the remote transport.
- Investigate an unexpected content change.
- Keep a record of MCP-driven operations.
- Enable it before exposing writes.
- Feed MCP activity into site monitoring.
- Correlate a change with the tool that made it.
- Detect misbehaving assistant behaviour.
- Build on the parent's dblog dependency.
- Keep non-human callers accountable.
- Review activity during an incident.
- Turn opaque automation into an audit trail.