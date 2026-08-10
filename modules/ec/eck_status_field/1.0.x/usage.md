<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECK Status Field provides the possibility to add a status/published base field to ECK entities.

---

ECK Status Field adds a **status/published base field to ECK (Entity Construction Kit) entities** — so
custom ECK entity types get a publish/unpublish status like core content entities, enabling draft/published
distinctions on custom entities. It depends on the ECK module.

Use it to add publish status to ECK entities. It is a content-modelling feature with an access angle: adding a
**published status** means unpublished entities should be **hidden from users without the right permission** —
ensure the ECK entity type's access handling actually enforces the published status (a status field is only
meaningful if access checks respect it), otherwise unpublished entities may still be viewable. It has no
access-control role of its own. Add the status field to ECK entity types.

---

- Add a published status to ECK entities.
- Enable draft/published on custom entities.
- Match core content status.
- Depend on the ECK module.
- Give ECK entities a status field.
- Support unpublished ECK content.
- ENSURE access respects the published status.
- Hide unpublished from unauthorized users.
- Have no access-control role of its own.
- Add the status field.
- Handle ECK status.
- Add publish status.
- Configure the field.
- Handle the status.
- Publish ECK entities.
- Configure ECK.
- Handle publishing.
- Add status.
- Set the field.
- Provide ECK status.
