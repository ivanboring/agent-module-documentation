<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PDB Vue js (pdb_vue) — agent index

Enables **Vue.js** components as Drupal blocks via **Progressively Decoupled Blocks**. Depends on
`pdb >= 1.0`. Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/services/pdb-vue`, permission `administer decoupled vue blocks`.

**Eleven example submodules — the real documentation:**

| Examples | Show |
|---|---|
| `vue_example_1/2`, `vue3_example_1/2` | Vue 2 and **Vue 3** basics |
| `vue3_vite`, `vue_example_webpack` | two build toolchains |
| `vue3_pinia_a` + `vue3_pinia_b` | **shared state between two separately placed blocks** |
| `vue_spa_component`, `vue3_spa_component` | an SPA inside a block |

Key facts:
- **Vue 2 reached end of life at the end of 2023.** Start from the `vue3_*` examples; the Vue 2
  ones are for maintaining existing work.
- Progressive decoupling is the point: Drupal still renders the page, routing and block layout;
  JavaScript owns specific regions. That keeps contextual links, block visibility and page
  assembly, which full decoupling gives up.
- The Pinia pair is the most instructive example — two independently placed blocks sharing state
  is the case that is awkward to get right by hand.
- Surface: `src/Render/`, `src/Plugin/`, `src/Form/VueForm.php`, `config/install`,
  `config/schema`.
