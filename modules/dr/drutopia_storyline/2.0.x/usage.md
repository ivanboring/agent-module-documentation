<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Storyline is a Drutopia feature that provides "storyline" Paragraph types so editors can lay out a chronology or story in a timeline format, with a bundled submodule to attach a storyline to Basic pages.
---
The main module is configuration-only: it installs two Paragraphs types — `storyline_header` (a header/intro paragraph with `field_storyline_header`) and `storyline_item` (each timeline entry with `field_storyline_heading` and `field_text`) — together with their field storages, field instances, and default form/view displays. A `field.storage.node.field_storyline` storage is defined so a storyline (a series of storyline paragraphs) can be referenced from nodes.

The included submodule **Drutopia Page Storyline** (`drutopia_page_storyline`) uses `config/actions` to add the `field_storyline` field to the Drutopia `page` content type and wire it into the page's default form display and full view display, so a page can carry a timeline. Both are delivered as default config with no PHP, routes, services, or permissions; they depend on Paragraphs, Entity Reference Revisions, Field Group, and the Drutopia core/page features. The typical task is to enable the feature (and the submodule if you want storylines on pages), then create storyline paragraphs while editing content.
---
- Add storyline (timeline) paragraph types for chronological content.
- Build a header paragraph that introduces a timeline.
- Add individual timeline entries with a heading and body text.
- Reference a series of storyline paragraphs from a node via field_storyline.
- Enable the submodule to add a storyline field to Basic pages.
- Present a simple chronology or story in timeline format.
- Group storyline fields visually using Field Group.
- Reuse the storyline paragraph types across multiple content types.
- Extend storyline_item with extra fields for richer timeline entries.
- Customize the paragraph view displays to theme the timeline.
- Create an "our history" or milestones page using storylines.
- Combine multiple storyline items into one continuous narrative.
- Attach a storyline to any Drutopia page after enabling the submodule.
- Order timeline entries by arranging paragraph deltas.
- Leverage entity_reference_revisions for revisioned timeline content.
- Ship storyline config as part of a repeatable Drutopia site build.
- Theme storyline_header separately from storyline_item.
- Remove the submodule to detach storylines from pages while keeping the types.