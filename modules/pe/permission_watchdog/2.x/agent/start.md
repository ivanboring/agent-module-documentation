<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Permission Watchdog (permission_watchdog) — agent index

**Logs changes to role permissions** (who changed which role's permissions, when). Version **2.1.0**.

Security-audit positive — permission changes are high-impact and a classic escalation path, and core
doesn't log them. Keep the log restricted (reveals permission structure/history); treat unexpected
entries as an incident signal.