<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Build scripts lets operators run admin-configured build programs from the Drupal UI.

---

Build scripts lets site operators define build programs (stages) in configuration and run them from the Drupal admin UI, viewing logs of each run. It's aimed at triggering deployment/build tasks (asset compilation, cache warming, external build steps) without leaving Drupal.

The programs are defined under `administer build_scripts configuration` and executed by users with `use build_scripts`; since running build programs is a privileged operation, restrict both permissions to trusted operators and treat configured commands as trusted-admin input. Supports Drupal 8 through 11.

---

- Define build programs (stages).
- Run build programs from Drupal.
- View logs of each run.
- Trigger deployment/build tasks.
- Compile assets or warm caches.
- Gate config with `administer build_scripts configuration`.
- Gate execution with `use build_scripts`.
- Restrict both permissions to trusted operators.
- Treat configured commands as trusted-admin input.
- Support Drupal 8 through 11.
- Avoid leaving Drupal for build steps.
- Run external build steps.
- Manage build stages.
- Log build output.
- Act as an operations tool.
- Trigger builds on demand.
- Keep builds inside the UI.
- Guard privileged execution.
