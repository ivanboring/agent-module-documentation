<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Definition Update provides the ability to update entity types safely via regular update hooks, for developers managing entity schema changes.

---

Entity Definition Update provides a developer helper for applying entity-type and field definition
changes through standard `hook_update_N()` update hooks — a safe, deploy-friendly way to reconcile
entity/field schema changes (the "mismatched entity/field definitions" situation) as part of a
controlled update, rather than clicking a UI button or running ad-hoc code. It depends on core System
and Field.

Use it in module/deployment workflows when entity or field definitions change and the storage schema
must be updated in step, via update hooks that run through `drush updatedb`/the update path. It is a
developer tool operating in the update/deployment context (already privileged); it does not expose a
public route. Applying definition updates changes storage, so run through the normal update pipeline
and test in non-production first.

---

- Apply entity definition updates safely.
- Update entity types via update hooks.
- Reconcile mismatched field definitions.
- Run schema changes through hook_update_N.
- Depend on core System and Field.
- Update storage in a deploy-friendly way.
- Avoid ad-hoc definition-update code.
- Run via drush updatedb.
- Operate in the update/deploy context.
- Expose no public route.
- Test updates in non-production.
- Manage entity schema changes.
- Apply field storage updates.
- Use in module deployment.
- Handle definition changes in step.
- Run through the update pipeline.
- Change storage deliberately.
- Support developer workflows.
- Reconcile entity/field schema.
- Update definitions controllably.
