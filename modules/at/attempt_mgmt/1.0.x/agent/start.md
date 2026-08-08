<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Attempt Management (attempt_mgmt) — agent index

Provides an **attempt** entity type + a field to attach attempt-tracking to any content entity.
Version **dev** (no tagged release resolved). Core `^10 || ^11`. No hard deps outside core.
Settings at `/admin/config/system/attempt-management/settings` (`administer site configuration`).
Permission: `administer attempt_mgmt_attempt types`.

Define **attempt types** at `/admin/structure/attempt_mgmt_attempt_types/add`, attach the field to
entities that should carry attempts, and drive it with a plugin.

Entities: `Attempt`, `AttemptType`. Key services: `AttemptFactory`, `FieldHelper`, list builders.

**Building block, not a finished feature** — on its own it adds the entity type and field; it does
not produce a quiz or course. It is the **storage layer `scorm_field` depends on** (SCORM
completion/score). See [[scorm_field]].