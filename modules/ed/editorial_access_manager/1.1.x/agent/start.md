<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Editorial access manager (editorial_access_manager) — agent index

Assigns **individual users** edit or translate rights on a **specific entity**, per language.
Depends on core `node` and `content_translation`. Core requirement `^8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/content/editorial-access-manager`.

Key facts:
- The assignment route carries the **langcode**:
  `/editorial-access-manager/editorial-assignment/{entity_type_id}/{entity_id}/{langcode}` — so a
  translation can be assigned independently of its source. That is the distinguishing feature, and
  `EditorialAccessManagerTranslationHandler` is where that behaviour lives.
- **Permissions are partly generated** by `EditorialAccessManagerPermissions::permissions()` via a
  `permission_callbacks:` entry, alongside declared ones including `assign entity edition` and
  **`reassign assigned entities`** (the handover case when someone leaves).
- Positioning: per-item delegation without **Group**'s membership model and without a role per
  team.
- **Verify in Views, JSON:API and search**, not only on the entity form. Per-item access modules
  most often fail to apply at query level — the exact failure recorded against
  `entity_access_password` elsewhere in this collection.
- Surface also includes `src/EventSubscriber/` and `src/EditorialAccessManager.php`.
