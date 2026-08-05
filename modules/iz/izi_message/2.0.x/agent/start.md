<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Izi Message (izi_message) — agent index

Restyles Drupal status messages as light responsive notifications. No dependencies.
Core requirement `^9.3 || ^10 || ^11`.
Settings at `/admin/config/development/izi_message/settings`
(`administer site configuration`).

Key facts:
- Same problem and same cautions as **`toastr`** (wave 66) — do not run both. Choose on library
  preference and footprint.
- **Accessibility is the thing to get right:**
  - a transient message needs an appropriate **ARIA live region** to reach a screen reader;
  - the timeout must be long enough to read;
  - **error and validation messages should not auto-dismiss** — those are precisely the ones a
    user re-reads while fixing a form.
- **Sensible scoping:** apply to the **admin theme only**, so editors get better confirmations
  while front-end validation keeps core's persistent behaviour.
- Surface: `src/Form/IziMessageSettingsForm.php`, `src/Utility/`, `css/izi_message.css`,
  `config/install`, `config/schema`. No permissions of its own.
