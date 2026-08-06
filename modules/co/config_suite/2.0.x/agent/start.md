<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Suite (config_suite) — agent index

Import, export and workflow automation around Drupal's configuration management, from
`/admin/config/config_suite/admin_settings` behind `administer config suite`. Version **2.0.5**.
Core requirement `^10.1 || ^11`.

**What core leaves open:** a pair of commands and a synchronise screen, assuming a discipline real
teams do not maintain. Someone changes a setting on production and forgets to export, so the next
import **silently reverts it**; partial export is awkward, so one feature's work produces a diff
nobody can review; nothing is automated.

**Two things that decide more than the tool does:**
1. **Automating export changes what a diff means.** It stops being a record of *deliberate* change
   and becomes a record of *everything*, accidents included — the review step moves from "export" to
   "commit", and **someone has to be doing it**. Same point as `config_auto_export` (wave 73).
2. **The durable answer to drift is usually `config_readonly`, not better export tooling.** Making
   production configuration **immutable** removes the class of problem instead of managing it — at
   the cost of the friction `config_readonly_menu_ui` (wave 77) exists to carve exceptions into.

Reach for automation where the team genuinely cannot lock production; for the lock where it can.
