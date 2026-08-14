<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Formatter Access Bypass is a rendered-entity formatter that, when the viewer lacks access to a referenced entity, still renders it — using an administrator-chosen *fallback* view mode instead of hiding it.
---
It extends core's `EntityReferenceEntityFormatter`. Normally that formatter hides referenced entities the current user cannot `view`. This plugin instead renders accessible entities in the configured view mode and inaccessible ones in a separate `view_mode_fallback` (default `default`), so a limited or anonymous user is shown output built from an entity they are not permitted to access.

This is intentional behaviour and a deliberate footgun, not a bug: it is meant for cases where you want a stripped-down public teaser of otherwise-restricted content, and the safety depends entirely on the fallback view mode being configured to expose only non-sensitive fields. WARNING: choose the fallback view mode carefully — any field placed in it will be rendered to users who cannot access the entity, so a full/complete view mode here leaks restricted content. Treat every field in the fallback view mode as public. Recursive rendering is capped at depth 20.
---
- Show a public teaser of otherwise-restricted referenced content
- Render inaccessible referenced entities in a minimal view mode
- Display a "restricted" placeholder teaser for gated nodes
- Give anonymous users a limited preview of members-only content
- Keep a reference field's layout intact even when access is denied
- Configure a dedicated fallback view mode with only safe fields
- Render accessible entities normally, inaccessible ones as fallback
- Provide a teaser for paywalled articles in a listing
- Avoid empty gaps where hidden references would be omitted
- Surface titles-only of restricted entities via a title view mode
- Build catalog rows that always show something for each reference
- Present a "log in to view" style stub via a custom view mode
- Use on curated relationship fields where partial disclosure is wanted
- Cap recursive entity rendering at depth 20 automatically
- Audit which fields appear in the fallback view mode before enabling
- Replace the core rendered-entity formatter where fallback is desired
