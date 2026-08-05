<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Login Redirect (localgov_login_redirect) — agent index

Redirects users after login. Depends on core `user`. Core requirement `^10.2 || ^11`.
Settings at `/admin/config/system/localgov_login_redirect` (`administer site configuration`).

Key facts:
- Small and configuration-driven: `localgov_login_redirect.module`,
  `src/Form/LoginRedirectSettingsForm.php`, `config/install`, `config/schema`. No permissions of
  its own, no entity types.
- Comes from the **LocalGov Drupal** distribution but has no council-specific dependencies —
  usable on any site.
- **Crowded niche.** `login_destination` (pulled in by `varbase_core`, wave 56) does the same job
  with per-role and per-condition rules. Choose this one for simplicity, that one when the
  destination must vary by role, path or previous page. Do not install both.
- Because the destination is configuration, it exports with `drush cex` and changes without a
  deployment.
