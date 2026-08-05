<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Condition adds a condition plugin so blocks (and anything else using Drupal's condition system) can be shown or hidden based on **which view and display** is being rendered, rather than by path.

---

Block visibility in Drupal is usually configured by request path, which breaks as soon as a view's path changes, gets an alias, or has several displays under different URLs. This module supplies a `views_condition` condition plugin that works from the actual rendered view instead. Its configuration form lists every view on the site as a collapsible `details` element containing a checkbox per display, so you tick exactly the view displays you want — for example the page display of a news listing but not its block or feed displays. A radios control at the top of the form sets the overall mode (apply to the selected displays, or to everything except them). Evaluation reads the current route match to determine the view and display being rendered. Because it is an ordinary condition plugin, it appears anywhere Drupal exposes conditions: block layout visibility, Context module rules, Layout Builder section visibility, and any custom code that evaluates conditions. A small JS library improves the form's usability. There is no configuration of its own, no permissions, no schema and no Drush.

---

- Show a block only on a specific view page.
- Hide a sidebar block on all listing views.
- Target a block at one display of a multi-display view.
- Avoid path-based block visibility that breaks on alias changes.
- Show filters help text only on the search results view.
- Add a promotional block to a single directory listing.
- Hide breadcrumbs on views pages.
- Show a "back to list" block only on view pages.
- Apply Layout Builder section visibility per view display.
- Combine with other conditions for finer targeting.
- Keep visibility rules stable when a view's path changes.
- Target attachment or feed displays specifically.
- Show a legend block on a map view display only.
- Configure visibility for views embedded in other pages.
- Exclude a block from every view page in one rule.
- Support multilingual sites where paths differ per language.
- Use with the Context module for site-wide rules.
- Reduce brittle path patterns in block configuration.
- Show editorial guidance blocks on admin views.
- Document block placement intent in terms of views, not URLs.
