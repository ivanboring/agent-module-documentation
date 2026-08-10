<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DrupalFit — agent index

Generates a **comprehensive site fitness/health audit** via a modern API (pluggable perf/security/config/HTTPS
checks; `drupalfit_report_export` submodule). Depends on core `system`, `update`. Provides permissions. Version
**1.1.3**. Core `^10.2||^11`.

Admin/audit — report reveals **detailed site/config info** (gate to trusted admins; exports are sensitive). Its
HTTPS self-check disables cert verification **intentionally** (probes the site's own endpoint — not a data
issue). No access role beyond permission.
