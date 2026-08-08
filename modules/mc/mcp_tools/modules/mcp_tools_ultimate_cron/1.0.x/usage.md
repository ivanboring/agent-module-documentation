<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
MCP Tools — Ultimate cron jobs adds the MCP tools for listing, running, enabling and inspecting Ultimate Cron jobs.

---

This is one of MCP Tools' 37 domain submodules. Enabling it registers a set of tool plugins that an AI assistant, connected through one of the parent module's transports, can call to work with Ultimate Cron jobs on the site. It exposes nothing on its own — it is a capability the parent's server offers once this submodule is on.

The tools it provides are: `DisableJob`, `EnableJob`, `GetJob`, `GetJobLogs`, `ListJobs`, `RunJob`. Each is a discrete operation the assistant invokes by name with typed arguments; there is no free-form access beyond them.

Every control the parent enforces applies here without exception. The tools appear only because this submodule is enabled; the global read-only mode blocks their writes; a connection's scope (`read`/`write`/`admin`) governs what it may do; the `mcp_tools use ultimate_cron` permission is required; and each call runs as the configured execution user, rate-limited. Enable this submodule when an assistant should be able to work with Ultimate Cron jobs, and leave it off otherwise — the surface area you expose is exactly the set of submodules you turn on.

---
- Have the assistant disable job.
- Have the assistant enable job.
- Have the assistant get job.
- Have the assistant get job logs.
- Have the assistant list jobs.
- Have the assistant run job.
- Enable this submodule to expose the Ultimate Cron jobs domain.
- Keep it disabled to hide these tools entirely.
- Gate it behind the `mcp_tools use ultimate_cron` permission.
- Block its writes with the server's global read-only mode.
- Restrict a connection to read scope to prevent its writes.
- Run its tools as a least-privilege execution user.
- Rate-limit how often an assistant calls these tools.
- Audit which of its tools are exposed on the MCP status page.
- Require a write scope before an assistant can change anything here.
- Combine it with only the other domains an assistant needs.