<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Timeline Block (timeline_block) — agent index

Renders dated entries as a visual **chronology**. Depends on core `block`. Version **1.2.5**.
Core requirement `^9 || ^10 || ^11`.

**Why this is information design rather than decoration:** some content is only legible as a
sequence — an organisation's history, a project's milestones, a case chronology. As dated
paragraphs it reads as text; as a timeline the **gaps, clusters and direction** are visible at a
glance.

**Three things determine whether it works:**
1. **Where the events come from decides whether it stays current.** Entries configured **in the
   block** are content-in-configuration — invisible to search and editorial workflow, edited where
   nobody looks. A timeline built from a **view of dated content** inherits filtering, access and
   language handling and **updates itself**. Almost always the better arrangement.
2. **A timeline is a list.** The markup should be an **ordered list of dated items**, keyboard
   reachable and readable in order by a screen reader — the visual arrangement is presentation over
   a linear structure. An implementation built from positioned `div`s loses that.
3. **Horizontal timelines break on phones**, where the axis with room is vertical. A design that
   scrolls sideways on a narrow screen is one most of the audience will not follow.
