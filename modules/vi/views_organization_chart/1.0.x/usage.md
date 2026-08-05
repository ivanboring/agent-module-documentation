<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Organization Chart renders a view's results as an organisation chart — boxes connected by lines showing reporting or hierarchical relationships — instead of as a list or table.

---

Staff directories, committee structures and departmental hierarchies are all stored as entities with a parent reference, and Views will happily list them; what it cannot do is show the shape. An organisation chart makes the structure legible at a glance, which is the entire reason such diagrams exist. This module supplies it as a Views **style plugin**, so the content, filtering and sorting remain ordinary Views concerns and only the rendering changes — a view already listing staff can be switched to a chart with one setting, and back again. It depends on core `views` with `config/schema` for its settings, on core `^10 || ^11`. The two things to check when adopting it are the ones that apply to every diagram of hierarchical data: how it behaves at depth and width, since a chart with two hundred people across seven levels is a different rendering problem from a chart with twenty; and how it degrades on a narrow screen, where a wide chart either scrolls or becomes unreadable. Verifying the accessible fallback matters too — a visual hierarchy needs an equivalent that a screen reader can follow.

---

- Show a staff structure as a chart.
- Visualise a departmental hierarchy.
- Display a committee structure.
- Show reporting lines.
- Render a taxonomy hierarchy visually.
- Build an org chart from content.
- Show a team's structure on an intranet.
- Switch a staff listing to a chart.
- Present a board and its committees.
- Show a service hierarchy.
- Visualise a category tree.
- Present a project structure.
- Filter a chart with Views filters.
- Show one department's branch.
- Build a directory with visual structure.
- Present a governance structure.
- Show an organisational restructure.
- Render a hierarchy without custom code.
