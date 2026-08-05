<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Migrate Sandbox is a scratchpad for Drupal's migration process pipeline: you paste a source row and a process configuration into a form and immediately see what the pipeline produces, without writing a migration, running it, or rolling it back.

---

Building a migration is mostly an argument with the process pipeline — which plugins to chain, in what order, what `source`/`default_value`/`callback` actually do to a given value. Normally the feedback loop is edit YAML, `drush migrate:import`, inspect, `drush migrate:rollback`, repeat. This module collapses that to a form submit. `SandboxMigration` builds a throwaway migration from what you type, runs the row through it, and `MigrateSandboxMessage` captures the migrate message stream so plugin errors surface in the UI rather than in a log. A settings form at `/admin/config/development/migrate-sandbox` is the whole interface, with `js/migrate-sandbox.js` improving the editing experience. The one permission, `access migrate_sandbox`, is correctly marked **`restrict access: true`** — that matters, because the form executes migrate process plugins on input the user supplies, and the plugin set on a real site includes things like `callback`, so this is a development tool that has no business being reachable on production.

---

- Experiment with a migrate process pipeline without running a migration.
- Learn what a process plugin does to a given value.
- Debug a failing transformation quickly.
- Test a plugin chain before committing it to YAML.
- Reproduce a colleague's pipeline problem from a paste.
- Check how `default_value` interacts with `source`.
- Explore the plugins available on a specific site.
- Teach the process pipeline to a new developer.
- Verify a date-format conversion.
- Confirm a `callback` plugin's argument order.
- See migrate messages without tailing a log.
- Iterate on a concatenation or explode chain.
- Validate a skip_on_empty condition.
- Prototype a migration on a development site.
- Avoid rollback cycles while tuning a transform.
- Test a custom process plugin you have just written.
- Compare two candidate pipelines side by side.
- Document a pipeline's behaviour with a worked example.
