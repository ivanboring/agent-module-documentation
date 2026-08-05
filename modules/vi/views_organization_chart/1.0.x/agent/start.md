<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Organization Chart (views_organization_chart) — agent index

Views **style plugin** rendering results as an organisation chart. Depends on core `views`.
Core requirement `^10 || ^11`.

Key facts:
- A style plugin, so **content, filtering and sorting stay ordinary Views concerns** — a view
  already listing staff switches to a chart with one setting and back again.
- Surface: `src/Plugin/views/style/`, `config/schema`. No routes or permissions.
- **Three things to verify when adopting it:**
  - behaviour at **depth and width** — 200 people across 7 levels is a different rendering problem
    from 20;
  - **narrow screens** — a wide chart either scrolls or becomes unreadable;
  - the **accessible equivalent** — a visual hierarchy needs something a screen reader can follow;
    a nested list is the usual answer.
- The view must expose the parent relationship (a reference field or taxonomy parent) for the
  chart to have a hierarchy to draw.
