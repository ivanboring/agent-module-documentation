<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PDB Vue enables Vue.js components to be placed as Drupal blocks through **Progressively Decoupled Blocks** — the middle path between a fully decoupled front end and a purely server-rendered site.

---

Full decoupling means a separate application, its own routing, its own build and deployment, and losing Drupal's block layout, contextual links and page assembly. Progressive decoupling keeps Drupal rendering the page and lets JavaScript take over specific regions — the interactive shopping basket, the live dashboard — which is often the right trade. PDB provides that mechanism generically; this module adds Vue as a supported framework, with `src/Render` and `src/Plugin` handling the rendering and block integration and a settings form at `/admin/config/services/pdb-vue` behind `administer decoupled vue blocks`. The eleven example submodules are the real documentation: `vue_example_*` and `vue3_example_*` cover Vue 2 and Vue 3, `vue3_vite` and `vue_example_webpack` show two build toolchains, `vue3_pinia_a`/`vue3_pinia_b` demonstrate shared state between two separately placed components, and `vue_spa_component`/`vue3_spa_component` show a single-page app inside a block. Requirements are `pdb >= 1.0` and core `^9 || ^10 || ^11`. Worth noting that Vue 2 reached end of life at the end of 2023, so new work belongs on the Vue 3 examples.

---

- Place a Vue component as a Drupal block.
- Add interactivity to one region of a page.
- Avoid full decoupling for a single feature.
- Keep Drupal's block layout and page assembly.
- Share state between two Vue blocks with Pinia.
- Build a dashboard widget in Vue.
- Run a small SPA inside a Drupal page.
- Use Vite as the build toolchain.
- Learn the pattern from shipped examples.
- Add a live-updating component.
- Reuse an existing Vue component in Drupal.
- Give a team a Vue entry point.
- Progressively modernise a front end.
- Build an interactive form in Vue.
- Keep server-side rendering for the rest of the page.
- Place the same component in several regions.
- Migrate from Vue 2 to Vue 3 examples.
- Prototype a decoupled feature cheaply.
