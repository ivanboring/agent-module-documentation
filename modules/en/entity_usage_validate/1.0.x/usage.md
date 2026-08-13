<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Usage Validate shows a warning message to authors when a published node references media entities that are still unpublished.

---

It solves a common editorial trap: a node goes live but an image/video it embeds is unpublished, so the
media does not render for the public. The module hooks `hook_entity_update()` (ordering itself, via
`hook_module_implements_alter`, to run *after* Entity Usage records the relationships) and, for published
nodes only, asks the `entity_usage.usage` service for the media targets of the current revision. It loads
those media and adds a `messenger` warning naming each item that is unpublished (title + ID).

It is advisory only — it never blocks the save, changes the node, or exposes anything to anonymous users;
the warning is shown to the editor performing the save (who already has edit access to that node). It reads
usage data through the Entity Usage API rather than querying entities directly, and only reports the label
and ID of referenced media, so there is no additional information-disclosure surface. Requires the Entity
Usage module.

---

- Warn an editor that a published node references unpublished media.
- Surface the media title and ID that needs publishing.
- Catch broken/empty media embeds before they reach visitors.
- Run after Entity Usage so the relationship data is current.
- Validate only on the published revision of a node.
- Skip the check entirely for unpublished nodes.
- Skip nodes that reference no media at all.
- Iterate every referenced media item and flag each unpublished one.
- Give authors an actionable reminder without blocking the save.
- Rely on the Entity Usage API rather than manual queries.
- Help maintain content quality on media-heavy sites.
- Prevent missing images on go-live in editorial workflows.
- Work across nodes of any content type with media references.
- Integrate transparently — no configuration required.
- Support Drupal 8.9 through 11.
- Complement Entity Usage's tracking with a publish-time guard.
