<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Services is the base of the LocalGov Drupal service model: a services landing page, second-level sublanding pages, ordinary service pages, shared navigation and status updates — delivered as five submodules over a small shared core.

---

Councils organise content around *services* — "Bins and recycling", "Parking" — each with a landing page, sections beneath it, and many detail pages, all sharing one navigation tree. This module supplies the shared foundation and, as its own description says, "won't do anything on its own": you enable the submodules you need. `localgov_services_landing` provides the top-level service node type, `localgov_services_sublanding` the second-level pages, `localgov_services_page` the ordinary content pages within a service, `localgov_services_navigation` the navigation shared between service pages (and external pages linking into the tree), and `localgov_services_status` status updates attached to a service landing page — the mechanism councils use for "bin collections delayed" style notices. The core module installs the `localgov_services_landing` and `localgov_services_sublanding` node types, a dedicated `localgov-services-menu`, and pathauto patterns for both the landing pages and the service hierarchy, so URLs reflect the service tree automatically. It depends on `localgov_core` and `pathauto`; Search API integration is a test dependency, so search of services comes from `localgov_search` rather than from here.

---

- Publish a council's services in a consistent structure.
- Give each service a landing page with child pages beneath it.
- Add second-level sublanding pages for large services.
- Share one navigation tree across every page of a service.
- Publish status updates against a service landing page.
- Warn residents about a temporary service disruption.
- Generate service URLs that mirror the service hierarchy.
- Link external pages into a service's navigation.
- Keep service structure consistent across editorial teams.
- Enable only the parts of the service model a site needs.
- Provide a predictable information architecture for residents.
- Group related content under one service umbrella.
- Give services their own menu separate from the main menu.
- Support A–Z service listings built on the landing pages.
- Keep pathauto patterns for services in configuration.
- Add a service section without touching the main menu.
- Model a service with many detail pages cleanly.
- Reuse the LocalGov editorial conventions across councils.
- Combine services with LocalGov directories and news.
- Migrate a legacy council site into a service-oriented structure.
