<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Sticky Local Tasks keeps Drupal's local task tabs — View, Edit, Revisions, Delete — pinned in place as the page scrolls, so an editor part way down a long node does not have to scroll back to the top to switch tabs.

---

Local tasks are rendered once at the top of the page and then disappear from view, which on a long article or a Layout Builder screen means a lot of scrolling. This module rebuilds them as a sticky element. `StickyLocalTasksBuilder` assembles the task list, a `Position` class expresses where they should sit, two Twig templates (`menu-local-tasks--sticky-local-tasks.html.twig` and `menu-local-task--sticky-local-tasks.html.twig`) provide the markup, and `sticky_local_tasks.theme.inc` plus a libraries entry supply the theming and assets. A settings form at `/admin/config/user-interface/sticky-local-tasks` controls position and behaviour, and `sticky_local_tasks.api.php` documents extension points for other modules. There is a wrinkle worth knowing: the module declares a permission `administer sticky local tasks` (marked `restrict access: true`) but the settings route requires core's `administer site configuration` instead, so the module-specific permission is not what gates the form. Requirements are PHP 8.1+ and core `^10 || ^11`.

---

- Keep edit tabs visible while scrolling a long node.
- Reduce scrolling for editors on content-heavy pages.
- Pin local tasks to the top or bottom of the viewport.
- Speed up switching between View and Edit.
- Improve the editing experience on Layout Builder screens.
- Make revisions and delete tabs reachable at any scroll depth.
- Position tabs to suit a custom admin theme.
- Provide consistent task navigation across content types.
- Theme sticky tabs with the supplied templates.
- Reduce editor complaints about long forms.
- Keep moderation tabs in reach while reviewing.
- Extend the task list from another module via the API.
- Give a translation workflow persistent tab access.
- Improve usability on small screens.
- Match tab styling to a bespoke admin theme.
- Avoid a custom theme override for the same effect.
- Support editors working on very long documents.
- Configure behaviour without touching CSS.
