<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Access Media (adva_media) — agent index

One-class glue submodule: registers an **overriding** Access Consumer for core `media` so adva
providers control media access. Depends on `adva` + core `media`. Configured on the shared adva
form (`/admin/config/people/adva`). No own permissions/routes/schema/hooks/services.

Parent (framework, plugin authoring, access model, security): [../../../../1.2.x/agent/start.md](../../../../1.2.x/agent/start.md)

Key facts:
- Sole code: `MediaAccessConsumer` (id `media`, entityType `media`) extending
  `OverridingAccessConsumer` — so adva **replaces the media access handler** with
  `AdvancedAccessEntityAccessControlHandler` and stores records in `adva_access`.
- Core Media only (not contrib Media Entity).
- Setup: enable providers for the Media consumer on the adva form, then rebuild records.
- **Security caveat (overriding consumer):** adva grants on media are additive/can't restrict
  below the `view media` permission, while listing queries are filtered — a media item hidden
  from Views may still be directly reachable. See the parent's `security.md` and
  `agent/api/access-model.md`.
