<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Site Studio Views Element adds an element to the Site Studio (Cohesion) builder that lets an author pick a View and render it inside a component.

---

Site Studio is a visual page builder with its own element vocabulary, and Views is where a Drupal site's listings live. Without a bridge, a page built in Site Studio either cannot include a listing at all or includes a hard-coded one placed by a developer. This module supplies the bridge: a Views element in the Site Studio palette, so an author selects the View and display like any other element setting.

The practical value is that listings stop being a developer task. A team building landing pages in Site Studio can put "latest news, three items" or "events in this category" into a page themselves, and the listing keeps all of Views' behaviour — filters, sorts, contextual arguments, pagers, access and caching — because it is still the View doing the work.

Site Studio itself is Acquia's commercial product and requires a licence; the `cohesion` module is its Drupal side and is a hard dependency here. This module is only useful on a site that already has that stack.

The core range `^8 || ^9 || ^10 || ^11` spans four majors, which as always says more about intent than about testing — verify against the Site Studio version in use, since the element API is Site Studio's rather than Drupal's and moves on its own schedule.

---

- Place a View inside a Site Studio component.
- Let authors add a listing without a developer.
- Embed a news listing in a landing page.
- Show category-filtered events in a component.
- Choose the View display from the builder UI.
- Keep Views filters and sorts in a built page.
- Use contextual filters inside a Site Studio layout.
- Preserve Views access checks in composed pages.
- Reuse an existing View in a new page design.
- Combine designed components with dynamic listings.
- Avoid hard-coding listings into components.
- Give a marketing team self-service listings.
- Verify the element against the installed Site Studio version.
- Audit which Views are embedded in Site Studio pages.
- Confirm the Site Studio licence covers the site.
- Plan a listing strategy for a Site Studio build.
