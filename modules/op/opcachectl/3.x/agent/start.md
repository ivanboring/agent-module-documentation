<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OPcache Control (opcachectl) — agent index

Shows **PHP OPcache status** and allows **clearing** the opcode cache. Version **3.0.0-beta5**.

**Security:** clearing forces a full recompile (perf hit) — **restrict to administrators** (repeated
unprivileged clearing is a mild DoS). Operational deploy tool, not a routine user feature; confirm
the status/clear actions are admin-gated.