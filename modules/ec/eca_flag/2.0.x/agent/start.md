<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ECA Flag (eca_flag) — agent index

Bridge between the **Flag** module and **ECA**. Depends on `eca (^2 || ^3)` and
`flag (^4 || ^5)` — two majors of each. PHP >= 8.1. Core requirement `^10.4 || ^11`.

Key facts:
- No routes, no permissions, no settings — everything is configured in **ECA's modeller**. The
  module contributes events and actions, nothing user-facing.
- Surface: `src/Event/` (flag events), `src/Plugin/` (ECA event + action plugins), `src/Hook/`,
  `config/schema`.
- **Watch for loops when modelling.** A model that both listens for flag events and performs flag
  actions can trigger itself — ECA will follow the chain. Add a condition that breaks the cycle,
  and test with a small dataset before enabling on production.
- Because both dependency ranges are wide, verify which ECA and Flag majors the site actually runs
  before assuming plugin names and event signatures match the documentation.
