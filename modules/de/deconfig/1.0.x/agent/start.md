<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Deconfig — agent index

A **developer module for excluding some configuration from config export/import** (protect environment-specific
settings). Version **1.0.x** (dev). Core `^8.8||^9||^10||^11`.

Developer/devops — be deliberate about **what you exclude** (excluding security config causes drift; don't
hand-manage secrets — use env/Key). No content/access role.
