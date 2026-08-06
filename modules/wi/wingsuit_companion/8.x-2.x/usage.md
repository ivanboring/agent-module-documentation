<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Wingsuit companion is the Drupal half of Wingsuit, a front-end toolkit that develops components outside Drupal — in a pattern library with hot reloading — and then serves them to Drupal through a `ws-assets://` stream wrapper.

---

The problem Wingsuit addresses is that Drupal is a slow place to build components. A designer iterating on a card wants a dev server, hot reload and isolated rendering; Drupal offers a cache rebuild. Wingsuit lets the component live in a front-end project with its own tooling, and this module makes the built output addressable from Drupal as a stream wrapper, so templates and libraries reference `ws-assets://…` and get whatever the build produced.

Four submodules bridge the rest:

- **`wingsuit_ui_patterns`** adds Twig extensions and a `wingsuit.yml` extension for UI Patterns, so components defined in the front-end project become pattern plugins. Its dependency list is the heaviest — `ui_patterns`, `ui_patterns_layouts`, `ui_patterns_settings ^2.0`, `ui_patterns_extends` and `components` — and on the review install it could not be enabled because `ui_patterns_settings`, `ui_patterns_extends` and `components` were not present. Install those first if you want it.
- **`wingsuit_lb`** adds Layout Builder support via `layout_builder_browser`.
- **`wingsuit_link`** integrates the UI Patterns Settings link widget with `link_attributes`.
- **`wingsuit_page_manager`** supplies a theme negotiator for Page Manager.

The permission `administer wingsuit configuration` is `restrict access: true` and gates the single settings route at `/admin/wingsuit-companion/form/config`.

Adopting Wingsuit is a workflow decision, not a module install: it presumes a front-end project, a build step and a team that wants component development outside Drupal. On a site without that, the stream wrapper has nothing to point at.

---

- Develop Drupal components in a front-end project.
- Serve built front-end assets through a stream wrapper.
- Reference built assets as `ws-assets://` from templates.
- Give designers hot reloading outside Drupal.
- Expose front-end components as UI Patterns.
- Place Wingsuit components in Layout Builder.
- Add link attributes to a pattern's link setting.
- Negotiate a theme for Page Manager pages.
- Keep component source out of the Drupal repository.
- Share components between Drupal and other consumers.
- Build a pattern library alongside a Drupal site.
- Restrict who may configure the asset paths.
- Install the UI Patterns stack before the bridge submodule.
- Audit which components a site consumes from Wingsuit.
- Decide whether a project justifies the front-end toolchain.
- Diagnose assets that resolve to nothing.