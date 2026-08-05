<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role description (role_description) — agent index

Adds a description to each user role and shows it on the account form. Depends on core `user` and
**`config_translation`**. Core requirement `^10 || ^11`. **Release is 1.0.0-rc2.**
Settings at `/admin/people/role-description`, gated by core's **`administer permissions`**.

Key facts:
- Reuses `administer permissions` rather than declaring a permission of its own — appropriate,
  since that is already the permission governing roles. It declares **no permissions**.
- Descriptions are **configuration** (roles are config entities), so they export with
  `drush cex` — and `role_description.config_translation.yml` plus the `config_translation`
  dependency makes them **translatable**, which matters when the person assigning roles does not
  read the site's default language.
- Surface: `role_description.module` (account form alter), `src/Form/SettingsForm.php`,
  `config/install`, `config/schema`, `role_description.config_translation.yml`.
- The problem it addresses is scale: role labels alone stop being self-explanatory somewhere
  around a dozen roles, and the person assigning them is often not the person who designed the
  permission scheme.
