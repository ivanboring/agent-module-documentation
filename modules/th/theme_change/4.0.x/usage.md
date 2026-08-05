<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Theme Change selects which theme renders which paths or routes, as configuration entities, rather than accepting Drupal's single admin-theme setting.

---

Core's theme negotiation offers one lever: an admin theme, applied to administrative routes, optionally extended to node edit forms. Real sites want finer control. A member dashboard should look like the site rather than like Claro. A complex admin screen used daily by a team may be better in the front-end theme where the organisation's own design system lives. A marketing landing page may need a stripped theme with no navigation. Doing that by hand means writing a theme negotiator service, which is a small but real piece of code that then has to be maintained. This module makes it configuration: each rule is a `theme_change` **configuration entity** matching a path or a route, so the rules export with the site's configuration, appear in a diff and are listable. Version **4.0.0** on core `^10 || ^11`, depending on core `path_alias`, administered at `/admin/config/system/theme_change`. Note that its three permissions — for the settings, edit and delete pages — are **not** marked `restrict access`, which is worth weighing: changing which theme renders an administrative page is not a privilege escalation in itself, but a theme carries templates and JavaScript, so being able to route pages into a chosen theme is more consequential than it first sounds. Two practical points: **the theme is part of the render cache key**, so a rule change means stale rendered output until caches clear; and a rule matching on **path alias** rather than route matches what the visitor typed, which is the friendlier option and the less precise one.

---

- Use the front-end theme for a dashboard.
- Render one admin page in a custom theme.
- Keep a member area on-brand.
- Strip navigation from a landing page.
- Apply a theme to a set of paths.
- Override the admin theme per route.
- Avoid writing a theme negotiator.
- Export theme rules with configuration.
- Theme a checkout differently.
- Use a minimal theme for a print page.
- Apply a theme to a section of the site.
- Keep node edit forms in the site theme.
- Theme a campaign path.
- Support a distinct staff interface.
- Give a report page a wide layout.
- Match a client portal's branding.
- Test a theme on selected paths.
- Support a multi-brand structure.
