<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Web Accessibility wires third-party WCAG 2.0 validation services into Drupal, so content can be checked against accessibility rules from inside the admin interface rather than by pasting URLs into an external tool.

---

The design is a small service registry rather than a validator of its own. `WebServiceManager` (behind `WebServiceInterface`) manages the configured services, an admin form at `/admin/config/system/web_accessibility` adds and configures them, and a second route deletes one by id — both gated by the module's single permission, `administer_web_accessibility` (note the underscores; it is spelled unusually for a Drupal permission). The module itself makes no HTTP calls: there is no Guzzle or `http_client` usage anywhere in `src/`, so the actual checking is delegated to whichever service is registered, and the security and privacy questions travel with that service rather than with this module. Two things follow. First, sending page content or URLs to an external validator is a data-sharing decision, and on a site with unpublished or confidential content it needs thinking about. Second, the permission is not marked `restrict access: true` even though it controls which external endpoint the site talks to. Core range is a very wide `^8 || ^9 || ^10 || ^11`, and the release still reports the legacy `8.x-1.4` packaging string.

---

- Check content against WCAG 2.0 rules.
- Run accessibility validation from the admin UI.
- Register an accessibility validation service.
- Configure several validators side by side.
- Give editors an accessibility check before publishing.
- Support a public-sector accessibility obligation.
- Remove a validator that is no longer used.
- Centralise accessibility tooling configuration.
- Audit a site section for accessibility issues.
- Provide evidence for an accessibility statement.
- Compare results from two validation services.
- Restrict validator configuration to administrators.
- Add accessibility checks to an editorial workflow.
- Track accessibility over time.
- Validate templates as well as content.
- Introduce accessibility checking to a team.
- Complement in-editor tools like Editoria11y.
- Document which standard a site is tested against.
