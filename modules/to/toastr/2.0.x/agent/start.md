<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Toastr (toastr) — agent index

Renders Drupal status messages as **toastr.js** toast notifications. Core-only dependencies.
Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/system/toastr`, permission **`administer toastr`**.

Key facts:
- **Accessibility is the thing to get right**, and it is easy to get wrong:
  - a toast must be in an appropriate **ARIA live region** to reach a screen reader;
  - the timeout must be long enough to read — a three-second dismissal excludes anyone reading
    slowly or using assistive technology;
  - **error and validation messages should not auto-dismiss at all**, and are generally better
    left in the page where they persist and can be re-read.
- The library is not bundled — check the status report if messages render normally rather than as
  toasts.
- Surface: `src/Form/ToastrSettingsForm.php`, `toastr.libraries.yml`, `config/install`,
  `config/schema`. No `src/Plugin`.
- Consider scope: applying it to the **admin theme only** gives the editorial benefit without
  changing how front-end validation errors behave for visitors.
