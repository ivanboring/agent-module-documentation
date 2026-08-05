<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Vue.js makes the Vue library available to Drupal as an asset library, so themes and modules can depend on one shared copy rather than each bundling its own.

---

This is a library-provider module of the same kind as `sweetalert2` (wave 60): it declares the library so other code can attach it, and does nothing on its own. The value is coordination — several modules and a theme all wanting Vue would otherwise load several copies, with the attendant weight and the risk of version conflicts on the page. Core requirement is `^10 || ^11`. Two points of orientation. **Vue 3 is the current major** and differs substantially from Vue 2, which reached end of life at the end of 2023 — so confirm which version the module provides and which the consuming code expects, because the incompatibilities are not subtle. And this is the **progressive** end of the spectrum rather than the decoupled one: attaching Vue to enhance parts of a Drupal-rendered page is a different architecture from a Vue application consuming Drupal as an API, and `pdb_vue` (wave 64) sits between them by making Vue components placeable as blocks. Establish which of the three a project actually wants before choosing tooling.

---

- Provide Vue to a custom module.
- Share one Vue copy across a site.
- Attach Vue from a theme.
- Avoid bundling Vue several times.
- Build an interactive widget in Vue.
- Enhance part of a Drupal page.
- Add a reactive component to a form.
- Support a progressive enhancement approach.
- Build a dashboard widget.
- Avoid a version conflict on the page.
- Provide a shared front-end dependency.
- Support a small interactive feature.
- Add reactivity without a build step.
- Prototype a component quickly.
- Support a team familiar with Vue.
- Reuse Vue across modules.
- Keep library management in Drupal.
- Add Vue to an existing theme.
