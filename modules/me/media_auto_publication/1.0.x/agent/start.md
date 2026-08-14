<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media auto publication (media_auto_publication) — agent index

**On the transition of a host entity to published, auto-publishes any unpublished media it references.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Depends on:** field, media
- **Service:** `media_auto_publication.publish_associated` → `PublishAssociated`.
- **Hook:** `hook_entity_presave` (ordered last via `hook_module_implements_alter`); triggers when entity implements `EntityPublishedInterface`, is now published, and was new or previously unpublished.
- **Mechanism:** scans `entity_reference` fields with `target_type: media`, calls `setPublished(TRUE)->save()` on unpublished referents.
- **Security / moderation note:** no routes, permissions, or admin UI. The publish is unconditional on that transition — it calls `setPublished(TRUE)->save()` directly (`src/PublishAssociated.php`, `publishReferencedMedias()`), performing **no separate access or content_moderation check**, so referenced media in a draft/unpublished moderation state is force-published alongside the host. This is the module's intended behaviour but can publish media an editor intended to keep unpublished; reported as an observation, not a route-level access flaw (the acting user already saved the host entity).