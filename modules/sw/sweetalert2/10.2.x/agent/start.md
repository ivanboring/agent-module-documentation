<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SweetAlert2 (sweetalert2) — agent index

Asset-library wrapper for the **SweetAlert2** JavaScript library. No dependencies, no routes, no
permissions, no configuration. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `sweetalert2.libraries.yml`, `sweetalert2.module`, `sweetalert2.install`,
  `README.md`, `LICENSE.txt`.
- **Enabling it alone changes nothing.** A theme or module must attach the library and call
  `Swal.fire()` itself. It exists so several consumers share one copy.
- **The library is not bundled.** `sweetalert2.install` checks for the library files (typically
  under `libraries/`). "Module enabled but dialogs still look native" is almost always a missing
  library, not a code fault — check the status report first.
- The module's version tracks the wrapper, not the upstream library version; confirm which
  library version is actually installed before relying on a specific SweetAlert2 API.
