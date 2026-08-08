<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Cron (simple_cron) — agent index

Plugin system for **cron jobs as plugins**, with view/run permissions. Version **1.1.0**.
Core `^10.2 || ^11`. Submodule `simple_cron_examples`.
Perms: `administer simple cron`, `view simple cron jobs`, `run simple cron jobs`.

Finer control than a single `hook_cron` — discrete jobs, runnable individually, permission-gated.
Restrict `run simple cron jobs` (it triggers background work on demand).