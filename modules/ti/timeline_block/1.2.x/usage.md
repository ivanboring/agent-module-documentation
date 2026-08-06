<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Timeline Block renders a list of events as a visual chronology — a vertical or horizontal timeline of dated entries.

---

Some content is only legible as a sequence. An organisation's history, a project's milestones, a legal case's chronology, a product's release history, a conference programme, a restoration's stages: presented as a list of dated paragraphs each reads as text, and presented as a timeline the shape of it — the gaps, the clusters, the direction — is visible at a glance. That is a genuine information-design gain rather than decoration, which distinguishes this from most visual-effect modules. Version **1.2.5** on core `^9 || ^10 || ^11`, depending on core `block`. Three things determine whether the result works. **Where the events come from** decides whether it stays current: a block with entries configured in the block itself is content in configuration, invisible to search and to editorial workflow, and edited in a place nobody looks — while a timeline built from a view of dated content inherits filtering, access and language handling and updates itself, which is almost always the better arrangement. **A timeline is a list**, so the markup underneath should be an ordered list of dated items, keyboard reachable and readable in order by a screen reader — the visual arrangement is presentation over a linear structure, and an implementation that builds it from positioned `div`s loses that. And **horizontal timelines break on phones**, where the axis with room is the vertical one, so a design that scrolls sideways on a narrow screen is a design most of the audience will not follow.

---

- Show an organisation's history.
- Present project milestones.
- Display a legal case chronology.
- Show a product's release history.
- Present a conference programme.
- Show a restoration's stages.
- Display a founder's biography timeline.
- Present a campaign's progress.
- Show a building's history.
- Display a research project's phases.
- Present an exhibition's chronology.
- Show a company's key dates.
- Display a course's schedule.
- Present an investigation's timeline.
- Show a charity's milestones.
- Display a heritage site's periods.
- Present a roadmap.
- Show an anniversary retrospective.
