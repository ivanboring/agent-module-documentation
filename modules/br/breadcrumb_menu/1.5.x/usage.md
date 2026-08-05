<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Breadcrumb Menu builds the breadcrumb trail from **menu link titles** rather than page titles, so the trail reads the way the navigation reads.

---

Drupal's default breadcrumb derives from the path and the pages along it, using each page's own title. That is often wrong in a specific and annoying way: a page titled "Applying for a residents' parking permit in the borough" appears in the menu as "Parking permits", and the breadcrumb should say the latter — the short label an editor chose for navigation, not the long one written for the page. Long titles also break the visual line of a breadcrumb and push it onto two rows on mobile. This module replaces the builder: `src/BreadcrumbBuilder.php` resolves the trail through the menu and uses link titles where a link exists, falling back to the page title where none does. A settings form at `/admin/config/system/breadcrumb-menu` behind the module's own `administer breadcrumb_menu` permission controls the behaviour. There are no dependencies beyond core and the range is a wide `^8 || ^9 || ^10 || ^11`. Because it registers a breadcrumb builder, it competes with other breadcrumb modules by priority — running two is a common cause of "my breadcrumb settings do nothing".

---

- Use short menu labels in the breadcrumb.
- Stop long page titles breaking the trail.
- Make the breadcrumb match the navigation.
- Improve breadcrumbs on mobile.
- Reflect editorial menu labels in the trail.
- Give a council site readable breadcrumbs.
- Fall back to page titles where no menu link exists.
- Configure breadcrumb behaviour without code.
- Reduce breadcrumb wrapping.
- Align breadcrumb with information architecture.
- Improve breadcrumb structured data.
- Support a deep menu hierarchy.
- Keep breadcrumbs consistent across sections.
- Replace a bespoke breadcrumb builder.
- Restrict breadcrumb configuration by permission.
- Improve scanability of a page header.
- Match breadcrumbs to a style guide.
- Support a site still on Drupal 8.
