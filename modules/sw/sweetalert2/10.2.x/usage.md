<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SweetAlert2 makes the SweetAlert2 JavaScript library available to Drupal as an attachable asset library, replacing the browser's stock `alert()` and `confirm()` dialogs with styled modals.

---

This is a library-wrapper module of the simplest kind: `sweetalert2.libraries.yml` declares the library, `sweetalert2.install` checks that the library files are present, and `sweetalert2.module` handles the attaching. There is no configuration form, no permission, no block and no route — a theme or module attaches `sweetalert2/sweetalert2` and calls `Swal.fire()` in its own JavaScript. Nothing changes by enabling it alone; it exists so that several modules or a theme can depend on one copy of the library rather than each bundling its own. The version number tracks the wrapper, not the library, and the library itself is expected to be installed separately (typically under `libraries/`, which is what the install hook verifies) — so a "module enabled but dialogs are still ugly" report is nearly always a missing library rather than a code problem. Its core range is a wide `^8 || ^9 || ^10 || ^11`.

---

- Replace browser alert dialogs with styled modals.
- Show a confirmation dialog before a destructive action.
- Give a custom module a consistent dialog style.
- Share one SweetAlert2 copy across modules.
- Attach the library from a theme.
- Show a success toast after an AJAX action.
- Confirm a deletion in a custom UI.
- Match dialogs to a site's branding.
- Prompt for input in a modal.
- Avoid bundling the library twice.
- Improve the look of a custom workflow.
- Show a timed notification.
- Add a queue-position or progress dialog.
- Provide a keyboard-dismissible modal.
- Standardise dialogs across a codebase.
- Replace ad-hoc confirm() calls.
- Support a site still on Drupal 8.
- Give a decoupled admin UI nicer dialogs.
