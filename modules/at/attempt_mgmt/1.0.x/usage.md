<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Attempt Management provides an "attempt" entity type and a field you can attach to any content entity, so a site can record repeated attempts against something — a quiz, a SCORM package, an exercise — without building the data model each time.

---

Anything that a user tries more than once and that records a result — an assessment, an e-learning module, a submission that can be retried — needs the same underlying shape: a per-user, per-entity record of each attempt, with a type that defines what an attempt means and what it stores. Building that from scratch is repetitive, and this module supplies it as reusable infrastructure. It is the dependency behind `scorm_field`, which uses it to record SCORM completion and score data.

You define **attempt types** at `/admin/structure/attempt_mgmt_attempt_types/add` — each type describes a kind of attempt — and attach the module's field to the entities that should carry attempts. A small plugin mechanism lets a module compute or react to attempts. The entity type, a factory (`AttemptFactory`), a field helper and list builders make up the bulk of the code.

Because it is a building block rather than a finished feature, what it does on a given site is defined by the types you create and the module that drives it. On its own it adds the entity type and the field; it does not, by itself, produce a quiz or a course. Treat it as the storage layer other features build on.

The settings page is gated on `administer site configuration`, and managing attempt types has its own `administer attempt_mgmt_attempt types` permission.

---

- Record repeated attempts against content.
- Track quiz attempts per user.
- Store SCORM attempt results.
- Attach attempt tracking to any entity.
- Define what an attempt type stores.
- Create a custom attempt type.
- Back an e-learning results model.
- Provide the storage layer for scorm_field.
- Add an attempts field to a content type.
- React to an attempt with a plugin.
- Compute a value from an attempt.
- Keep per-user attempt records.
- Retry an assessment and record each try.
- Restrict attempt-type management by permission.
- Build a course completion feature.
- Reuse one attempt model across features.
- List attempts through a list builder.
- Create attempts via the factory service.
- Model retryable submissions.
- Separate attempt storage from presentation.