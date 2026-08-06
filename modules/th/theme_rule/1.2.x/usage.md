<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Theme Negotiation by Rules chooses the active theme from conditions a site builder configures, rather than from code.

---

Drupal decides the theme through negotiators, and writing one is a small module: implement the interface, register the service, set a priority. That is fine for developers and a wall for everyone else, so sites end up either with a single theme or with a bespoke negotiator nobody remembers.

This module exposes negotiation as configuration built from Drupal's condition plugins — path, content type, role, language, whatever conditions the site has. A campaign section gets its own theme, a partner area gets partner branding, a print-oriented theme applies on a path.

**Theme negotiation composes by priority, and that is where the surprises live.** A site typically has several negotiators already — the admin theme negotiator, core's default, sometimes a domain or language one — and which wins is a matter of service priority rather than of which was configured last. When a page renders in an unexpected theme, the answer is in the negotiator ordering, not in this module's rules.

Worth knowing too that the active theme affects more than appearance: libraries, template suggestions and some render behaviour follow it. A rule that switches theme on a path also switches which templates and JavaScript apply there, which is the point and is occasionally a surprise.

---

- Serve a section with a different theme.
- Brand a partner area separately.
- Apply a print theme on a path.
- Switch theme by content type.
- Switch theme by role.
- Switch theme by language.
- Configure negotiation without writing code.
- Replace a bespoke theme negotiator.
- Debug a page rendering in the wrong theme.
- Check negotiator priority ordering.
- Understand which negotiator wins.
- Account for libraries following the theme.
- Account for template suggestions changing.
- Audit a site's theme rules.
- Document negotiation for a team.
