<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Vue.js (vuejs) — agent index

Provides the **Vue** library as a Drupal asset library. No dependencies, no routes, no
permissions, no configuration. Core requirement `^10 || ^11`.

Key facts:
- **A library provider — it does nothing on its own.** Another module or theme must attach the
  library. Same shape as `sweetalert2` (wave 60). Its value is one shared copy rather than several.
- **Confirm the Vue major.** Vue 3 is current; **Vue 2 reached end of life at the end of 2023**,
  and the differences are not subtle. Check what this provides against what the consuming code
  expects.
- **Three architectures, easily confused — establish which the project wants:**
  1. *progressive* — attach Vue to enhance parts of a Drupal-rendered page (this module);
  2. *component blocks* — Vue components placed as Drupal blocks (`pdb_vue`, wave 64);
  3. *decoupled* — a Vue application consuming Drupal as an API (needs neither).
