<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Preview (project all_entity_preview) lets editors preview selected entities in any view mode before saving, extending live preview beyond nodes to whatever entity types you choose.

---

Core gives nodes a preview button; most other entity types get nothing, so an editor working on a taxonomy term, a media item or a custom entity has to save to see the result and then fix it. This module generalises preview to selected entity types and lets the previewer pick the view mode, so "how will this look as a teaser?" is answerable before the entity is committed.

The machine name is `preview` even though the project is `all_entity_preview`, which is worth knowing when enabling it or reading config. It is a focused editorial-experience improvement with no permissions surface of its own beyond the normal entity access — it shows a preview of what the editor could already edit.

For teams editing more than just nodes, it closes an annoying gap. Confirm the view modes you want to preview are configured for the entity types you enable it on, since the preview renders whatever those view modes define.

---

- Preview a taxonomy term before saving.
- Preview a media item before saving.
- Preview any entity type.
- Choose the view mode to preview.
- See a teaser before committing.
- Extend preview beyond nodes.
- Give editors non-node preview.
- Check rendering before save.
- Preview a custom entity.
- Reduce save-and-fix cycles.
- Preview in a specific view mode.
- Improve the editorial experience.
- Preview a paragraph-heavy entity.
- Confirm view modes before enabling.
- Preview a block content entity.
- Enable per entity type.
- Check display without publishing.
- See full and teaser renders.
- Preview before workflow transition.
- Support multi-entity editing.