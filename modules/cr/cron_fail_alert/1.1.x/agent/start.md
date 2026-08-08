<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cron Fail Alert — agent index

Watches **cron execution** and alerts with action items when cron fails/stalls (a stuck cron silently degrades
a site — mail, search index, cleanup). Provides permissions. Version **1.1.1**. Core `^10.3||^11`.

Operational/admin (reliability-positive). If it emails alerts, set recipients appropriately (alerts hold
operational detail). No access role beyond permission.
