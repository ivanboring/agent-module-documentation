<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# drush-pre-deploy (drush_pre_deploy) — agent index

Adds a **`hook_pre_deploy()`** step running **before** `drush deploy`'s database updates. No
dependencies, no permissions — it exists for the CLI. Version **1.2.1**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Where it fits in `drush deploy`'s deliberate sequence:**
`updatedb` → `config:import` → `cache:rebuild` → `deploy:hook`. There is no slot **before** any of
that, and there is real work that belongs there:
- deleting a configuration object that would make `config:import` fail;
- fixing data a schema update is about to choke on;
- disabling a module whose update hook is known to break;
- snapshotting the pre-update state so a migration can be verified afterwards.

The alternative is a **shell script wrapped around `drush deploy`**, living outside the codebase and
outside review. A hook keeps it in the module where the change it supports lives.

**Two cautions for every deployment hook:**
1. **It runs before updates**, so the code executes against the **old schema** and must not assume
   anything the pending update introduces — the commonest way a pre-deploy hook breaks a deployment.
2. **Deployment hooks run once per environment and are hard to test.** The first real execution is
   on production unless the sequence is rehearsed **against a copy of production data** — the only
   rehearsal that counts.
