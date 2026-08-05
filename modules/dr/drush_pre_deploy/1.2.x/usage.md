<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
drush-pre-deploy adds a `hook_pre_deploy()` step to Drush's deployment command, running code *before* database updates rather than after.

---

`drush deploy` is the standard deployment sequence — `updatedb`, `config:import`, `cache:rebuild`, `deploy:hook` — and it has a deliberate shape: schema updates first, then configuration, then post-deployment logic in `hook_deploy_NAME()`. What it does not have is a place to run something **before** any of that, and there is a real class of work that belongs there. Taking a snapshot or a measurement of the pre-update state so a migration can be verified afterwards. Removing a configuration object that would otherwise cause `config:import` to fail. Fixing data that a schema update is about to choke on. Disabling a module whose update hook is known to break. Doing any of these means a shell script wrapped around `drush deploy`, which lives outside the codebase and outside review; a hook keeps it in the module where the change it supports also lives. Version **1.2.1** on `^8` through `^11`, no dependencies, no permissions — it exists for the CLI. Two cautions apply to every deployment hook. **It runs before updates**, so the code executes against the *old* schema and must not assume anything the pending update introduces — the commonest way a pre-deploy hook breaks a deployment. And **deployment hooks run once per environment and are hard to test**, so the first real execution is on production unless the sequence is rehearsed against a copy of production data, which is the only rehearsal that counts.

---

- Run code before database updates.
- Delete config that would block an import.
- Snapshot data before a migration.
- Fix data before a schema update.
- Disable a module before its update hook.
- Prepare a deployment step in code.
- Avoid a shell wrapper around drush deploy.
- Verify pre-update state.
- Clean up before config import.
- Handle a breaking update safely.
- Keep deployment logic in the codebase.
- Prepare for a field storage change.
- Remove a stale configuration object.
- Support a complex release.
- Record metrics before a deployment.
- Handle a rename before updates run.
- Guard an update with a precondition.
- Keep deployment steps reviewable.
