<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Adds selective config patching to Configuration Split when 'Do not patch dependents' is enabled.

---

Config Split Selective Patch adds selective config patching to Configuration Split when the "Do not patch dependents" option is enabled — refining how Config Split applies partial configuration so that only the intended config is patched and dependent config is left alone, avoiding unintended config changes during split import/export. It extends Config Split. Depends on `config_split`; supports Drupal 10.3+ and 11.

---

- Add selective config patching.
- Extend Configuration Split.
- Honour 'Do not patch dependents'.
- Patch only the intended config.
- Leave dependent config alone.
- Avoid unintended config changes.
- Refine split import/export.
- Depend on `config_split`.
- Support Drupal 10.3+ and 11.
- Control split patching.
- Aid config workflows.
- Handle selective patches.
- Patch config
- Refine Config Split
- Support Drupal.
