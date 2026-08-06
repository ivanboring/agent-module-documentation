<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Timeline adds a timeline paragraph type — a sequence of dated entries rendered in one of several styles — to the Extra Paragraph Types family.

---

Timelines turn up constantly on marketing and institutional sites: a company history, a project's milestones, a product roadmap, the stages of an application process. Built by hand they end up as a table or a pile of nested divs in the body field, unmaintainable and unstyleable. As a paragraph type each entry is structured data with its own fields, ordered by the editor, and rendered by templates the theme can override.

Like the rest of the EPT family it carries an `ept_settings` field whose widget exposes presentation choices per instance, so the same timeline component can be given different styles on different pages without new view modes. `EptSettingsTimelineWidget` extends `ept_core`'s default widget without declaring its own constructor, which is why it instantiates cleanly against `ept_core` 2.0.0 — worth noting because its sibling `ept_cta` 2.0.1 does not (see that module's notes).

Adoption is normally family-wide: install `ept_core`, then whichever component types you need. If you take that route, pin the EPT modules together in composer — the family shares a widget base class whose signature has changed between releases, and nothing in the individual modules' requirements enforces a matching set.

---

- Show a company history as a timeline.
- Lay out project milestones chronologically.
- Present a product roadmap.
- Describe the stages of an application process.
- Build an event programme by time.
- Add a timeline component to a landing page.
- Let editors reorder timeline entries.
- Switch timeline style per page instance.
- Replace a hand-built timeline in a body field.
- Theme timeline entries with template overrides.
- Structure dated content as fields rather than markup.
- Add a timeline to a case study.
- Combine a timeline with other EPT components.
- Keep timeline styling out of the WYSIWYG.
- Pin EPT family versions together in composer.